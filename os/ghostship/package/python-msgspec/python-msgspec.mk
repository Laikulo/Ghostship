################################################################################
#
# python-msgspec
#
################################################################################

PYTHON_MSGSPEC_VERSION = 0.18.4
PYTHON_MSGSPEC_SOURCE = msgspec-$(PYTHON_MSGSPEC_VERSION).tar.gz
PYTHON_MSGSPEC_SITE = https://files.pythonhosted.org/packages/f2/5f/d202be1baac094064d3c4d2bd926b5ff83002fe411410b225d0c88f8c5ba
PYTHON_MSGSPEC_SETUP_TYPE = setuptools
PYTHON_MSGSPEC_LICENSE = FIXME: please specify the exact BSD version
PYTHON_MSGSPEC_LICENSE_FILES = LICENSE

$(eval $(python-package))
