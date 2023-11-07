################################################################################
#
# python-preprocess-cancellation
#
################################################################################

PYTHON_PREPROCESS_CANCELLATION_VERSION = 0.2.0
PYTHON_PREPROCESS_CANCELLATION_SOURCE = preprocess_cancellation-$(PYTHON_PREPROCESS_CANCELLATION_VERSION).tar.gz
PYTHON_PREPROCESS_CANCELLATION_SITE = https://files.pythonhosted.org/packages/96/02/c8bd237196ca3ec99b0757744e591b3d7c64d7269c991bb7ca50008b6f8d
PYTHON_PREPROCESS_CANCELLATION_SETUP_TYPE = setuptools
PYTHON_PREPROCESS_CANCELLATION_LICENSE = GNU General Public License v3 (GPLv3)
PYTHON_PREPROCESS_CANCELLATION_LICENSE_FILES = LICENSE

$(eval $(python-package))
