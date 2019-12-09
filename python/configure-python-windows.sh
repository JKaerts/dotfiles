# Setting up a python install

# A standard Anaconda install is too big for me.
# I don't use python for a living so I just need
# a setup for playing around with. This setup
# consists of the scipy stack and some helper
# packages for managing my code.

# Installing the Scipy stack
SCIPY_STACK="numpy scipy matplotlib ipython pandas sympy nose"
pip install --user $SCIPY_STACK

# Some auxiliary scientific packages
MISC_SCIENTIFIC="scikit-image jupyter"
pip install --user $MISC_SCIENTIFIC

# These packages are useful for working with python code
# or for interfacing with i.e. TeX.
CODE_ANALYSIS="pycodestyle pylint mypy pytest coverage"
INTERFACING=pygments
pip install --user $CODE_ANALYSIS $INTERFACING

# Youtube-dl allows you to download videos from streaming sites.
EXTRA=youtube-dl
pip install --user $EXTRA

# create default ipython profile and edit config
ipython profile create
sed -i.backup 's/^#c\.InteractiveShellApp\.exec_lines = \[\]/c\.InteractiveShellApp\.exec_lines = \["import sympy as sp", "import numpy as np"\]/' \
$HOME/.ipython/profile_default/ipython_config.py

