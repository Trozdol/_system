#!/bin/bash
#
# Mount NFS Volumes
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/nfsshare ~/200-nfsshare &&
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/vm ~/200-vm &&
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/depot-01 ~/200-depot
