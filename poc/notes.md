# POC Notes
Notes taken during the creation of the POC VM for Ghostship

Started with a OpenSUSE Leap 15.5 VM installed from CD with 'Server' role and default btrfs partitioning 

user poc/P@$$w0rd
root pw P@$$w0rd

2G Ram 2vCPU
50G Disk
NIC (host masquerade)
NIC (isolated network "ghostship" 192.168.100.0/24. addr.2)

    Yast network configured with NetworkManager.

Set hostname to ghostship.printernet

Packages installed for easy adminship: tmux
Packages installed for target functionality: [dnsmasq] ipxe-bootimgs python311 python311-pip
(brackets indicate already installed)

added system user pipy

# Things that depend on mgmt system attributes


# Things that depend on a specific print host
