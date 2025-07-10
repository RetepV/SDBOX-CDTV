# SDBOX-CDTV
Files and experiences with using a Commodore Amiga CDTV together with an SDBOX (SDBOX Mini V2)

Here you will find:

* **SDBOX WB 1.3** A folder which contains a set of files to copy to an SD Card. This contains the following:
  * Workbench 1.3.3 v34.34, Boot and Extras
  * AmigaBasic 1.2
  * Apps/TSGUI - To image ADF files from and to floppy.
  * Apps/SysInfo - Get information about your system.
  * Software/SDBOX - Drivers and scripts for using an SDBOX. This is a safety copy.
  * Software/ADF - Some ADF files, mainly boot disks.
* **SDBOX 1.3 Boot.adf** An image for a minimal bootdisk that mounts the SDBOX, assigns all paths to it, and continues to boot from the SDBOX. Note that this file is also contained in the SDBOX image.
* **SDBOX Drivers** A folder with all the necessary software to mount an SDBOX.

This is what I use to boot my Amiga CDTV into Workbench 1.3 and work directly from the SDBOX.

Some notes:

* If you boot the CDTV with a CD in the CDROM drive, the CDTV will reboot if you eject the CD. However, if you boot without the CD and wait until the Workbench screen is shown, you can insert and eject the CD without any reboots.
* The larger the partition on the SD card is, the more memory will be taken up after mounting it. This is not specific for the SDBOX, but for any large drive. Remember that 4GB is HUGE for an Amiga. The first drive for the Amiga 500 was 'only' 20MB. If you want to save memory, just create a partition of 100MB-200MB on the SD card. It's probably more than enough. If you do need large storage, then you'll have to get a memory expansion.

