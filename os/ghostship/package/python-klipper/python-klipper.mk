################################################################################
#
# python-klipper
#
################################################################################

PYTHON_KLIPPER_VERSION = 0.12.0.dev287 
# URL - https://github.com/Laikulo/klippy/releases/download/klipper-c4754e6/klipper_klippy_l-0.12.0.dev287.tar.gz
PYTHON_KLIPPER_SOURCE = klipper_klippy_l-$(PYTHON_KLIPPER_VERSION).tar.gz
PYTHON_KLIPPER_SITE = https://github.com/Laikulo/klippy/releases/download/klipper-c4754e6
PYTHON_KLIPPER_SETUP_TYPE = setuptools
PYTHON_KLIPPER_LICENSE = GPL-3.0+
PYTHON_KLIPPER_LICENSE_FILES = COPYING.txt

PYTHON_KLIPPER_DEPENDENCIES = host-python-cffi libusb libusb-compat

$(eval $(python-package))
