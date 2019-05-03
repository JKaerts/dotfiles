REM Installing required packages
pip install --user numpy ^
scipy ^
matplotlib ^
ipython ^
pandas ^
sympy ^
nose

pip install --user scikit-image

pip install --user jupyter

pip install --user youtube-dl

pip install --user pygments

pip install --user pycodestyle

REM create default ipython profile and edit config
ipython profile create
sed -i.backup 's/^#c\.InteractiveShellApp\.exec_lines = \[\]/c\.InteractiveShellApp\.exec_lines = \["import sympy as sp", "import numpy as np"\]/' ^
%HOME%\.ipython\profile_default\ipython_config.py

