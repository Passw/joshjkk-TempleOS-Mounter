# TempleOS Mounter

Access TempleOS files outside of TempleOS.

## About

With the ```mount.sh``` and ```unmount.sh``` scripts, you can mount the TempleOS filesystem then access, edit and create files which will show up in TempleOS.

**This only works with ```.vdi``` files produced by VirtualBox.** *However*, [here is a tutorial](https://www.howtogeek.com/devops/how-to-mount-a-qemu-virtual-disk-image/) on how you could do it with ```.img``` files for QEMU.

## Usage

**The process in which you do this is very important.**

1. Place the ```mount.sh``` and ```unmount.sh``` in the same directory as your ```TempleOS.vdi``` image.

2. Run the ```mount.sh``` script, then cd to ```/mnt``` where you will find all the files.

3. Do whatever you need to do with the files, make sure you use ```sudo```.

4. cd back then run the ```unmount.sh``` to unmount ```/mnt```, you may need to manually unmount the filesystem if you can see it mounted in your mounted devices. **The files you added or edited will not be seen in TempleOS unless you unmount first before running.**

5. Run TempleOS and check to see if it worked. If it didn't, it is most likely because ```/mnt``` wasn't properly unmounted, run ```sudo umount /mnt``` and try again.
