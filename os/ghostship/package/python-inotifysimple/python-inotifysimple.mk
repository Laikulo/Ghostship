################################################################################
#
# python-inotifysimple
#
################################################################################

PYTHON_INOTIFYSIMPLE_VERSION = 1.3.5
PYTHON_INOTIFYSIMPLE_SOURCE = inotify_simple-$(PYTHON_INOTIFYSIMPLE_VERSION).tar.gz
PYTHON_INOTIFYSIMPLE_SITE = https://files.pythonhosted.org/packages/51/41/59ca6011f5463d5e5eefcfed2e7fe470922d3a958b7f3aad95eda208d7d3
PYTHON_INOTIFYSIMPLE_SETUP_TYPE = setuptools
PYTHON_INOTIFYSIMPLE_LICENSE = BSD
PYTHON_INOTIFYSIMPLE_LICENSE_FILES = LICENSE

$(eval $(python-package))
