# ScaleDown batch file
Windows batch file to add right click mouse context menu option to scale down any selected image file to 800x600pixels.

Author: Olafesq

Installation:
============
* 1. Install Imagemagick for win: http://www.imagemagick.org/script/binary-releases.php and find the file "convert" in its installation folder.
   (Imagemagick is a light weight commandline image manipulation program, with many functions.)
* 2. Save scale_down.bat file on your PC and modify it to have the correct full path to the Imagemagick convert file.
* 3. Open regedit and find HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell
* 4. Add new key under shell: "Scale down"
* 5. Add new key under Scale down: "command"
* 6. Double-click on command default value and in "Value data" add the full path to the batch file + "%1". 
   This will look something like this: "C:\Programs\Scripts\scale_down.bat" "%1"
* DONE
 

Usage:
=====
* Select any image(s) you want to scale down.  
* Right click on the image file and from the menu select Scale down. 
* New image(s) name_small.jpg will be generated and saved in the same folder. Original image will be untouched. 
