# State Locations
Below is a list of various state that needs to be preserved between boots of a node, this does not include software versions, as those are to be bundled in the initrd.

## General Goals
State should be setup such that loss of connectivity to remote state does not halt in-progress prints, the system should prefer to allow a node to be ahead (or out of sync) as opposed to ensuring consistency.

## Types of state

### System Configuration
Even though we expect our print hosts to be as stateless as possible, we do need to store some information about these systems, such as the kernel and fs to load, as well as any overlaid fs's.  
This is needed *very* early on in boot, so our options are limitied  
Current Thought: config server url in kernel command line, something like matchbox's generic files to template out enough to establish all other state connections  
Other things we probably want to deal with  
* tls certificates for printer domain (advil or similar)
* ssh user ca trust (for allowing easy ssh to print hosts from mgmt host)
* ssh host certificates (because scary warnings are scary, and because it's a good idea in general)
* extra directories to dl and add to PYTHONPATH for klipper (to allow loading extras modules and packages w/o rebuilding the bundle)
* some netuser/group provider (maybe ldap+krb5 at the end, but probably something simpler initially)
* syslog/metrics targets
* netconsole config (kernel command line, probably)

### Moonraker database (sqlite)
Sqlite is generally not very happy about being on a remote store, but we do want to have some level of crash safety. Unsure how heavily moonraker accesses this db.  
Written by: Printer only.  
Read by: Host for versioned backups (?)  
Performance needed: ??? (moderate?)  
Current thought: drbd volume between "real" storage on the mgmt system, and a ramdisk on the printer.  
CAP: AP

### Gcode Storage
These files are streamed during a print, so the availability of the entirety of any open files is paramount. We don't care about consistency once a file is opened.  
Written By: Mgmt only. (maybe printers for deletes? unsure)  
Read By: Host  
Performance needed: low, high reliability  
Current Thought: NFS with some kind of "smart cache" in front of it to guard against failures. Maybe write a fuse that caches on open(r), and presents the union of cache and the underlying storage?  
CAP: AP  

### klipper/moonraker config storage
This contains various configuration files specific to this printer. Note that Klipper will rewrite parts of the *.cnf when SAVE_CONFIG is issued.  
Klipper only reads this at startup, but it may write to it at any time. Manual modifications of this are also important, as is a version history.  
Written By: Both  
Performance needed: low, high reliability  
Current Thought: Printer syncs during boot, and an inotify watcher informs a daemon on the mgmt of any changes. Mgmt tracks changes both by the end user and klipper itself. Git may be a good option for this.  
CAP: AP  

### klipper saved variables
Klipper supports saving gcode variables to files. This is quite a bit more chatty than the config selfmod above, so an alternate soloution may be needed. However, it is expected that the user won't be changing these.  
Written By: Printer  
Read By: Printer  
Performance needed: moderate, (needs fast small operations)  
Current Thought: Klipper currently only supports saving these to a file. Parsing/generating this file and storing these vars somewhere else (redis?) may be a more desirable soloution.  
CAP: CA (?)  
