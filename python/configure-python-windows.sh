# Setting up a python install

# A standard Anaconda install is too big for me.
# I don't use python for a living so I just need
# a setup for playing around with. This setup
# consists of the scipy stack and some helper
# packages for managing my code.

# Installing the Scipy stack
pip install --user numpy \
                   scipy \
                   matplotlib \
                   ipython \
                   pandas \
                   sympy \
                   nose

# Some auxiliary scientific packages
pip install --user scikit-image \
                   jupyter

# These packages are useful for working with python code
# or for interfacing with i.e. TeX.
pip install --user pygments \
                   pycodestyle \
                   mypy

# Youtube-dl allows you to download videos from streaming sites.
pip install --user youtube-dl

# create default ipython profile and edit config
ipython profile create
sed -i.backup 's/^#c\.InteractiveShellApp\.exec_lines = \[\]/c\.InteractiveShellApp\.exec_lines = \["import sympy as sp", "import numpy as np"\]/' \
$HOME/.ipython/profile_default/ipython_config.py

