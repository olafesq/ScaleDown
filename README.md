# ScaleDown
Windows batch file to add right click mouse context menu option to scale down any selected image file to 800x600pixels.
Author:Olaf

Usage: Select any image type you want to sale down and save in the same folder as _small.jpg. 
Right click on the image file on from the menu click Scale down. 
New image name_small.jpg will be generated, original image will be untouched. 

Installation:
1. Install Imagemagick. http://www.imagemagick.org/script/binary-releases.php
2. Save scale_down.bat file on your PC
3. Open regedit and find HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell
4. Add new key under shell: "Scale down"
5. Add new key under Scale down: command
6. Double-click on command default value and in Value data add the full path to the batch file + "%1". 
   This will look something like: "C:\Programs\Scripts\scale_down.bat" "%1"
