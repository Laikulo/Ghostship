Client should:
* Discover the GS controller
* Retreieve host-specific info
* Retrieve klipper-configuration from GS controller
* Based on the MCUs in the config, locate devices, and read current klipper version (resetting after complete)
* If the firmware version does not match the embedded host, retrieve firmware bundle from GS controller and flash
* Retrieve saved config blob from GS controller
* Template top-level config (w/saved config and optional MCU paths
* Create overlay tree for klipper pythonpath, unpack any extras there as aproprate.
* Start klipper
* Watch top-level config for saved config edits, and post any back to the GS controller
