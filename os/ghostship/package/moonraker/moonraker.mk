################################################################################
#
# moonraker
#
################################################################################

MOONRAKER_VERSION = 9785387
MOONRAKER_SOURCE = 9785387867605ce5962ea76262d840b9121553d4.tar.gz
MOONRAKER_SITE = https://github.com/Arksine/moonraker/archive
MOONRAKER_SETUP_TYPE = setuptools
MOONRAKER_LICENSE = GPL-3.0
MOONRAKER_LICENSE_FILES = LICENSE

MOONRAKER_DEPENDENCIES = host-python-pdm-backend

$(eval $(python-package))
