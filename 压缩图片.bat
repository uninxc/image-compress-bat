@echo off
echo ======================================================
echo 1.���Ȱ�װGraphicsMagick
echo 2.�Ѵ��ļ��ŵ�ͼƬ���ڵ��ļ���
echo 3.�ù��ܲ�֧�ֱ������ļ��й���
echo 4.֧��jpgͼƬ��pngͼƬ
echo 5.ѹ�����ͼƬ�ŵ�target�ļ���
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
echo ѹ�����...

pause 