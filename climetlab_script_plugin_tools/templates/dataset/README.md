## climetlab-{{ cookiecutter.plugin_name }}

A dataset plugin for climetlab for the dataset {{ cookiecutter.plugin_name }}/{{ cookiecutter.dataset_name }}.


Features
--------

In this README is a description of how to get the {{ cookiecutter.plugin_name }}.

## Datasets description

There are two datasets: 

### 1 : `{{ cookiecutter.dataset_name|lower|replace('-', '_') }}`
TODO


### 2 : TODO
TODO


## Using climetlab to access the data

See the [demo notebooks](https://github.com/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/tree/main/notebooks)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/main?urlpath=lab)


- [demo_{{ cookiecutter.dataset_name|lower|replace('-', '_') }}.ipynb](https://github.com/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/tree/main/notebooks/demo_{{ cookiecutter.dataset_name|lower|replace('-', '_') }}.ipynb)
[![nbviewer](https://raw.githubusercontent.com/jupyter/design/master/logos/Badges/nbviewer_badge.svg)](https://nbviewer.jupyter.org/github/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/blob/main/notebooks/demo_{{ cookiecutter.dataset_name|lower|replace('-', '_') }}.ipynb) 
[![Open in colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/blob/main/notebooks/demo_{{ cookiecutter.dataset_name|lower|replace('-', '_') }}.ipynb) 
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/main?filepath=notebooks/demo_{{ cookiecutter.dataset_name|lower|replace('-', '_') }}.ipynb)
[<img src="https://deepnote.com/buttons/launch-in-deepnote-small.svg">](https://deepnote.com/launch?name=MyProject&url=https://github.com/{{ cookiecutter.github_username }}/climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}/tree/main/notebooks/demo_my_dataset.ipynb)


- TODO.


The climetlab python package allows easy access to the data with a few lines of code such as:
``` python

!pip install climetlab climetlab-{{ cookiecutter.plugin_name|lower|replace('_', '-') }}
import climetlab as cml
ds = cml.load_dataset("{{ cookiecutter.plugin_name }}-{{ cookiecutter.dataset_name }}", date="20201231")
ds.to_xarray()
```


Support and contributing
------------------------

Either open a issue on github if this is a github repository, or send an email to email@example.com.

LICENSE
-------

See the LICENSE file.
{%- if cookiecutter.use_ecmwf_license_header|lower == 'y' %}
License: [Apache License 2.0](LICENSE) In applying this licence, ECMWF does not waive the privileges and immunities 
granted to it by virtue of its status as an intergovernmental organisation nor does it submit to any jurisdiction.
{%- endif %}

Authors
-------

{{ cookiecutter.full_name }} and al.

See also the CONTRIBUTORS.md file.
