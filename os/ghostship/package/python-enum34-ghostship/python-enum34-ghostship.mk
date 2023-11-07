################################################################################
#
# python-enum34-ghostship
#
################################################################################

PYTHON_ENUM34_GHOSTSHIP_VERSION = 1.1.10
PYTHON_ENUM34_SOURCE = enum34-$(PYTHON_ENUM34_GHOSTSHIP_VERSION).tar.gz
PYTHON_ENUM34_GHOSTSHIP_SITE = https://files.pythonhosted.org/packages/11/c4/2da1f4952ba476677a42f25cd32ab8aaf0e1c0d0e00b89822b835c7e654c
PYTHON_ENUM34_GHOSTSHIP_SETUP_TYPE = distutils
PYTHON_ENUM34_GHOSTSHIP_LICENSE = FIXME: please specify the exact BSD version
PYTHON_ENUM34_GHOSTSHIP_LICENSE_FILES = enum/LICENSE

$(eval $(python-package))
