# (C) Copyright 2020 ECMWF.
#
# This software is licensed under the terms of the Apache Licence Version 2.0
# which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
# In applying this licence, ECMWF does not waive the privileges and immunities
# granted to it by virtue of its status as an intergovernmental organisation
# nor does it submit to any jurisdiction.
#

import glob
import os

from climetlab.scripts.tools import parse_args
import logging

LOG = logging.getLogger(__name__)
import climetlab.debug


class PluginCreator:
    def __init__(self, out_dir):
        self.out_dir = out_dir

    @property
    def template_dir(self):
        here = os.path.dirname(__file__)
        return os.path.realpath(os.path.join(here,'templates', self.kind))

    def write_to_file(self, filename, txt):
        os.makedirs(os.path.dirname(filename), mode=511, exist_ok=True)
        with open(filename, 'w') as f:
            f.write(txt)

    def process_template(self, template):
        input_filename = os.path.join(self.template_dir, template)
        output_filename = os.path.join(self.out_dir, template)
        with open(input_filename, 'r') as f:
            txt = f.read() 
        self.write_to_file(output_filename, txt)

    def get_tmpl_files_list(self):
        cwd = os.getcwd()
        os.chdir(self.template_dir)

        lst = glob.glob('**/*', recursive=True)
        lst = [f for f in lst if os.path.isfile(f)]

        os.chdir(cwd)
        return lst

class DatasetPluginCreator(PluginCreator):
    kind = 'dataset'

    def create(self):
        for tmpl in self.get_tmpl_files_list():
            LOG.debug(f'Building {tmpl}')
            self.process_template(tmpl)

class CreatePluginCmd:
    @parse_args(
        kind=dict(
            help="plugin kind. (must be 'dataset' or 'source')",
        ),
    )
    def do_plugin_create(self, args):
        """Pligin creator utilities."""
        print("Creating a plugin")
        outdir = 'tt'
        creator = DatasetPluginCreator(out_dir = outdir)
        creator.create()
        print("Plugin Created")

