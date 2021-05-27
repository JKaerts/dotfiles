# Configuring python on my system

A long time ago I used to install Anaconda to manage my python installation.
However, Anaconda proved to be too big for me. This is why I switched to
manual administration of my python installation.

## Global packages

Once a python installation is present, I like having the following
packages available globally:
- mypy: Check if all type hints in a source file make sense.
- pycodestyle: Check the source code for compliance with
  [PEP8](https://www.python.org/dev/peps/pep-0008/).
- pydocstyle: Check the docstrings for compliance with
  [PEP257](https://www.python.org/dev/peps/pep-0257/).
- pyflakes: Check the source code for bug of the 'low hanging fruit' kind.
- pylint: Analyze (lint) the source code. More agressive than pycodestyle.

all these packages can be installed with the command

```
pip install --user <package-name>
```

## Local environments

I use `venv` to create my local environments for the simpple reason that it
comes bundled with my python install and it hasn't let me down yet.

## Noteworthy packages

Although the concept of the SciPy stack is deprecated, it provides a good
starting point for any program that requires more computing power than the
standard library:
- Numpy
- SciPy
- Matplotlib
  - dateutil
  - pytz
  - support for at least one backend
- IPython
  - pyzmq
  - tornado
- pandas
- SymPy
- nose

Some auxiliary scientific packages I have needed in the past are scikit-image
(for it's capability to compute level sets) and jupyter (for the notebooks).

A talk on debugging by Raymond Hettinger alerted me to the existence of the
following tools for finding bugs in python code:
- pytest
- coverage
- hypothesis
At the moment the built-in unittest module suffices for me but here they are
if I ever need something stronger.

Doing source code highlighting in LaTeX with minted requires the pygments
package to be present globally.


