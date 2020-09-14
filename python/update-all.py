""" update-all.py
    This script fetches all packages installed by pip and runs
        pip install --upgrade
    on them. If they needn't be upgraded, it doesn't do anything.
"""
import pkg_resources
from subprocess import call

packages = [dist.project_name for dist in pkg_resources.working_set]
call("pip install --upgrade " + ' '.join(packages), shell=True)