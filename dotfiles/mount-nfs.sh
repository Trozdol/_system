#!/bin/bash
#
# Mount NFS Volumes
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/nfsshare ~/10.1.10.200/nfs &&
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/vm       ~/10.1.10.200/vms &&
sudo mount_nfs -o resvport,rw 10.1.10.200:/home/nfs/depot-01 ~/10.1.10.200/depot &&
sudo mount_nfs -o resvport,rw 10.1.10.200:/var/nfsshare      ~/10.1.10.200/nfsshare
