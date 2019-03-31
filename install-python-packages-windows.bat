REM Install the SciPy stack
pip install --user numpy ^
scipy ^
matplotlib ^
ipython ^
pandas ^
sympy ^
nose

REM Scikit-image has better support for contour sets than matplotlib
pip install --user scikit-image

REM Jupyter has the notebook server
pip install --user jupyter

REM Install youtube-dl for downloading of youtube videos
pip install --user youtube-dl

REM Pygments is needed for the LaTeX package minted to work
REM as well as pollen html syntax highlighting
pip install --user pygments

REM Pycodestyle checks code for stylistic errors
pip install --user pycodestyle