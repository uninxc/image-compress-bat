@echo off
echo ======================================================
echo 1.请先安装GraphicsMagick
echo 2.把此文件放到图片所在的文件夹
echo 3.该功能不支持遍历子文件夹功能
echo 4.支持jpg图片和png图片
echo 5.压缩后的图片放到target文件夹
echo ======================================================

if not exist "target" (mkdir "target" )  
set work_path="%cd%" 
for  %%s in (.,*) do ( 
    echo  %%s
   if /I "%%~xs"==".jpg" ( gm convert  +profile "*"  %%s  target/%%s) 
   if /I "%%~xs"==".jpeg" ( gm convert +profile "*" %%s  target/%%s) 
   if /I "%%~xs"==".png" ( gm convert  +profile "*"  %%s target/%%s) 
) 
echo ======================================================
echo 压缩完成...

pause 