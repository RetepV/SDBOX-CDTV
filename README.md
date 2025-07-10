# SDBOX-CDTV
Files and experiences with using a Commodore Amiga CDTV together with an SDBOX (SDBOX Mini V2)

Here you will find:

* **SDBOX WB 1.3** A folder which contains a set of files to copy to an SD Card. This contains the following:
  * Workbench 1.3.3 v34.34, Boot and Extras
  * AmigaBasic 1.2
  * Apps/TSGUI - To image ADF files from and to floppy.
  * Apps/SysInfo - Get information about your system.
  * Software/SDBOX - The drivers and scripts for using an SDBOX.
  * Software/ADF - Some ADF files, mainly boot disks.
* **SDBOX 1.3 Boot.adf** An image for a minimal bootdisk that mounts the SDBOX, assigns all paths to it, and continues to boot from the SDBOX.
* **SDBOX Drivers** A folder with all the necessary software to mount an SDBOX.

This is what I use to boot my Amiga CDTV into Workbench 1.3 and work directly from the SDBOX.

Some notes:

* If you boot the CDTV from a floppy with a CD in the CDROM drive, the CDTV will reboot if you eject the CD. However, if you boot from floppy without the CD and wait until the Workbench screen is shown, you can insert and eject the CD without any reboots.
* The larger the partition on the SD card is, the more memory will be taken up after mounting it. This is not specific for the SDBOX, but for any large drive. Remember that 4GB is HUGE for an Amiga. The first drive for the Amiga 500 was 'only' 20MB. If you want to save memory, just create a partition of 100MB-200MB on the SD card. It's probably more than enough. If you do need large storage, then you'll have to get a memory expansion.
* If you use an SDBOX, make sure to use it with a quality power supply. Using a low quality power supply is reason #1 of experiencing SD card corruption.

How to go about creating a boot disk? There is a chicken and egg issue here, you can only create a boot disk from the Amiga itself, but how do you get the SDBOX drivers on the Amiga?

A few options:

* A GreaseWeazle. I can highly recommend it. And they are not expensive. https://github.com/keirf/greaseweazle/wiki
* A Gotek. Why not? A little bit more expensive, but also useful. https://www.gotekemulator.com/
* Using a nullmodem cable and Amiga Explorer. https://www.amigalove.com/viewtopic.php?t=15
* In case of a CDTV, you can boot from CD. In order to do that, you need to make an ISO image first and burn it to a CD. This can be done through an emulator like UAE, using the CD32 mastering tools. It's probably a blog post in itself on how to set up UAE and create the image files, and maybe I will write that one day.
