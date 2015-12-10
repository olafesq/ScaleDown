:: Batch file to convert image file to a smaller jpg file with ImageMagick

:: This ensures that command convert is defined with full path and not confused with other convert.exe or simlilar stuff
  SETLOCAL EnableDelayedExpansion 
  SET IMCONV="C:\Programs\ImageMagick-6.8.9-Q16\convert.exe"
  
  :: geometry option flag '^' which is used to resize the image based on the smallest fitting dimension. That is, the image is resized to completely fill (and even overflow) the pixel area given. 
  %IMCONV%   %1  -resize 800x600^  "%~dpn1_small.jpg"

  :: Alternative scale to pixels: 800*600=480000 pixels
  :: %IMCONV%   %1  -resize @480000  "%~dpn1_small.jpg" 
