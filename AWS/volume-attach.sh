# Attaching Volumes to the EC2 Instance

## Format the volume with ext4
sudo mkfs -t ext4 /dev/nvme1n1

## Create a mount point
sudo mkdir /mnt/data

## Mount the Volume
sudo mount /dev/nvme1n1 /mnt/data

## verify it's Mounted
df -h

## Get The UUID of the Volume
sudo blkid /dev/nvme1n1
Copy the UUID=xxxx-xxxx from the output.

## Edit /etc/fstab to persist mount across reboot
sudo nano /etc/fstab

Add this line at the end (replace xxxx-xxxx with actual UUID):
UUID=xxxx-xxxx  /mnt/data  ext4  defaults,nofail  0  2




