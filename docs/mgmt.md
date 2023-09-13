# Management Host
The management host is the only stateful system in the setup, it is also the primary control surface, and router (if enabled) for the print hosts.

## Responsiblities
* Serve DHCP w/PXE options to print hosts
* Provide stage-1 SFTP of a stronger PXE client if needed (iPXE, &c)
* Provide iPXE/uBoot config files for starting the kernel
* Manage DNS for the print network.
* Serve kernel images and initrd bundles over http(s) for uboot/ipxe
* Provide userdb for print hosts
* Provide for easy compilation/ammending of initrd bundles and/or kernels
* Provide a store of precompiled klipper firmware bundles for use by print hosts
* Provide information about print hosts, their associated printers, and the desired versions of MCU firmware.
* Provide access to all moonrakers across all print hosts over RP'd https. (optionally directly to the "outside" network on seperate ports, to make integration with external clients easier)
* Serve fluidd (or mainsail, if auth not enabled) to the end users over an easy-to use http(s) interface. Auto-populate instances based on configuration.
* Provide copy-pastable connection configs for common slicer plugins
* receive syslog/netconsole from print hosts
* (optional; not reccomended) Route traffice (masquerading or otherwise) between the "printer" network and the "outside" network.
* Keep backups of state, versioned where it makes sense.

## Services
* dnsmasq for dhcp/dns/tftp. I'm not really a fan of dnsmasq, but for simple things like this, it's the obvious choice.
* -- x509 auto-ca -- (issues certs to nodes that can prove their ownership of a hostname)
* -- ssh auto-ca -- (issues certs to nodes that can prove their ownership of a hostname, or present an x509 cert for the same
* -- config server -- (provides initial configuraiton, and update notificaitons for klipper/moonraker config)
* Caddy (reverse proxy for moonrakers and static fileserving for fluidd/moonraker on the user side, and kernel/initrd/&c on the printer side)
* syslog-ng (for recieveing netconsole and/or syslog from print hosts)
* cockpit or similar (to make it easier for non-sysadmin types to do basic operations)
* powerman (to manage power state of printers through various means, even if it is just ssh to shutdown and a smart plug)
* redis (storing variable state)
* nfs (ganesha?; serving gcode and other simple resources to print hosts)
* drbd (needs a bunch of small volumes, which may need to be versioned on the host side only. Is an LVM thin pool a good option for this?)
* some db (postgres?; or maybe sqlite is enough) for storing printer configuration, and other information about hosts, so that said information can be used by other services.
