################################################################################
#
# python-libnacl
#
################################################################################

PYTHON_LIBNACL_VERSION = 2.1.0
#URL https://files.pythonhosted.org/packages/df/fc/65daa1a3fd7dd939133c30c6d393ea47e32317d2195619923b67daa29d60/libnacl-2.1.0.tar.gz
PYTHON_LIBNACL_SOURCE = libnacl-${PYTHON_LIBNACL_VERSION}.tar.gz
PYTHON_LIBNACL_SITE = https://files.pythonhosted.org/packages/df/fc/65daa1a3fd7dd939133c30c6d393ea47e32317d2195619923b67daa29d60
PYTHON_LIBNACL_SETUP_TYPE = pep517
PYTHON_LIBNACL_LICENSE = Apache-2.0
PYTHON_LIBNACL_LICENSE_FILES = LICENSE

PYTHON_LIBNACL_DEPENDENCIES = host-python-poetry-core

$(eval $(python-package))
