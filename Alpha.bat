@echo off
title ������ʾ�� Edit by Bruce Wangne
::pin
goto bravo
goto main
echo ������PIN�룺
set /p pw0=
::if "%pw0%"=="8128" (cls & goto main) else (cls & echo PIN�����)
::goto pin 
:main 
cls
::echo ������������������������������������������������
::echo ������������������������������������������������
::echo ����                    ����
::echo ������������������������������������������������
::echo ������������������������������������������������
echo #######################
echo #    0 �˳�           #
echo #    1 ���汸��       #
echo #    2 ��ʱ�˵�       #
echo #    3 ȡ���ػ���ʱ   #
echo #    4 ��������       #
echo #    5 Դ����         #
echo #    6 showing off    #
echo #    7 Win10��ֽ      #
echo #    8 ��ʱ����       #
echo #    9 ������Դ������ #
echo #    a CMD            #
echo #    b ����Ӧ�ó���   #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=��������룺 
if "%input%"=="0" goto exit 
if "%input%"=="1" goto backup 
if "%input%"=="2" goto schedule 
if "%input%"=="3" goto cancel 
if "%input%"=="4" goto kidding
if "%input%"=="5" goto code
if "%input%"=="6" goto bravo
if "%input%"=="7" goto bing
if "%input%"=="8" goto temp_bkup
if "%input%"=="9" goto exprb
if "%input%"=="order" goto order
if "%input%"=="od" goto order
if "%input%"=="exprb" goto exprb
if "%input%"=="hell" goto taskmgr
if "%input%"=="tkrb" goto taskmgr
if "%input%"=="a" cmd
if "%input%"=="b" goto prgm
if "%input%"=="cmd" cmd
if "%input%"=="CMD" cmd
if "%input%"=="reboot" shutdown -r -t 0
if "%input%"=="rb" shutdown -r -t 0
if "%input%"=="shutdown" shutdown -s -t 0
if "%input%"=="sd" shutdown -s -t 0
if "%input%"=="utkl" taskkill /f /im uTorrent.exe 
if "%input%"=="ut" start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe"
if "%input%"=="cls" (cls & goto bravo)
cls
goto main 

:clear
echo ���ڽ�����ѡ��
cls
goto main

:schedule
cls
echo #######################
echo ##   ��ʱ�˵�����    ##
echo #######################
echo #    0 ����           #
echo #    1 ��ʱ�ػ�       #
echo #    2 ��ʱ����       #
echo #    3 ȡ���ػ���ʱ   #
echo #    4 ��������       #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=��������룺 
if "%input%"=="0" goto main 
if "%input%"=="1" goto shut_down 
if "%input%"=="2" goto re_boot
if "%input%"=="3" goto cancel
if "%input%"=="4" goto kidding
if "%input%"=="reboot" shutdown -r -t 0
if "%input%"=="rb" shutdown -r -t 0
if "%input%"=="shutdown" shutdown -s -t 0
if "%input%"=="sd" shutdown -s -t 0
goto submain
pause 
exit 

:exit
cls
echo ��лʹ��
::pause
exit

:backup
::echo �����뱸�����루CODE I��
::set /p code=
::if "%code%"=="back" (cls & echo ������ѡ�� & goto clear) 
::if "%code%"=="8128" (cls & echo ������ȷ) else (cls & echo ������������� ���������롰back��  & goto 1) 
echo ���ڿ�ʼ���汸��
pause
::rd/s/q D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\
::rd/s/q H:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\
rd/s/q "E:\360 Cloud Drive\BT Download\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"
rd/s/q "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"
::rd/s/q E:\360~1\BT~1\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
::pause
::Xcopy C:\Users\Bruce\Desktop D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
::Xcopy %~d0 D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
Xcopy %~d0 H:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
Xcopy %~d0 "F:\Cloud Backup\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy %~d0 "E:\360 Cloud Drive\BT Download\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\Data "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\*.dat "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\DBackup%date:~2,2%.%date:~5,2%.%date:~8,2%\"
Xcopy D:\Data "F:\Cloud Backup\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\*.dat "F:\Cloud Backup\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\DBackup%date:~2,2%.%date:~5,2%.%date:~8,2%\"
pause
goto main 

:shut_down
::echo ����������
::set /p pw=
::if "%pw%"=="back" (cls & echo ������ѡ�� & goto clear) 
::if "%pw%"=="bruce" (echo ������ȷ) else (cls & echo ������������� ���������롰back��  & goto 2)
echo �����붨ʱ�ػ�����ʱʱ�䣨����Сʱ�� 
set /p hours=
set /a time=%hours%*3600
echo "%hours%"Сʱ��ػ�
shutdown -s -t %time%
echo ȡ��������c
set /p can=
if "%can%"=="c" goto 4 
echo �ػ�δȡ��
pause
goto main 

:re_boot 
::echo ����������
::set /p pw=
::if "%pw%"=="back" (cls & echo ������ѡ�� & goto clear) 
::if "%pw%"=="bruce" (echo ������ȷ) else (cls & echo ������������� ���������롰back��  & goto 3)
echo �����붨ʱ��������ʱʱ�䣨����Сʱ�� 
set /p hours=
set /a time=%hours%*3600
echo "%hours%"Сʱ������
shutdown -r -t %time%
echo ȡ��������c
set /p can=
if "%can%"=="c" goto 4 
echo ����δȡ��
pause
goto main 
 

:cancel
cls
shutdown -a
echo ��ȡ���ػ��������ƻ���
pause 
cls
goto main
exit 

:kidding 
cls
echo ����������
set /p scan=
echo r u sure
pause 
echo ���ˣ�������Ҳ������㷴�ڵĻ����ˣ�������������
pause 
echo ������ƭ��ģ�
pause 
echo ����Ϊ�һ����������������ô���Ե�λ��ô���޴������࣡
pause 
cls
goto main 

:code 
cls
type D:\BAT.dat
pause
cls
goto main 


:bing 
cls
::pause
rd/s/q D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
Xcopy C:\Users\Bruce\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
setlocal enabledelayedexpansion
for /r  D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\ %%i in (*.*) do (
    set /a n+=1
    ren "%%i" !n!%%~xi.jpg
 )
set n=
cls
echo ��Ӧ�۽�������ֽ�ѱ�����ϣ����ֶ�ɾ���������ٴ�����
start D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
pause
cls
goto main


:order 
cls
set n=
set /p pre=������ǰ׺��
::pause
::rd/s/q D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
::Xcopy C:\Users\Bruce\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
setlocal enabledelayedexpansion
for /r  D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\ %%j in (*.*) do (
    set /a n+=1
    ren "%%j" %pre%!n!%%~xj
 )
::pause
cd D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
pause
cls
goto main

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:temp_bkup
echo ���ڿ�ʼ��ʱ����
pause
rd/s/q "E:\360 Cloud Drive\BT Download\Temp_Backup\"
::pause
Xcopy %~d0 "E:\360 Cloud Drive\BT Download\Temp_Backup\Desktop\"/e
Xcopy D:\Data "E:\360 Cloud Drive\BT Download\Temp_Backup\Data Backup\"/e
Xcopy D:\*.dat "E:\360 Cloud Drive\BT Download\Temp_Backup\Data Backup\DBackup\"
start "" "E:\360 Cloud Drive\BT Download\Temp_Backup\"
pause
goto main
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:exprb
cls
echo ������Դ��������
::pause
echo.
echo Killing the explorer.exe process....
echo.
taskkill /f /im explorer.exe
echo.
echo.
echo.
echo Waiting to restart explorer.exe.....
start explorer.exe
echo.
echo.
echo explorer.exe has been restarted.wait for exit
::pause
cls
goto main 


:taskmgr
cls
taskkill /f /im explorer.exe
start explorer.exe
taskkill /f /im taskmgr.exe
start taskmgr.exe
cls
goto main


:bravo
set /p bravo=
if "%bravo%"=="main" goto main 
if "%bravo%"=="order" goto order
if "%bravo%"=="od" goto order
if "%bravo%"=="exprb" goto exprb
if "%bravo%"=="hell" goto taskmgr
if "%bravo%"=="tkrb" goto taskmgr
if "%bravo%"=="cmd" cmd
if "%bravo%"=="CMD" cmd
if "%bravo%"=="reboot" shutdown -r -t 0
if "%bravo%"=="rb" shutdown -r -t 0
if "%bravo%"=="shutdown" shutdown -s -t 0
if "%bravo%"=="sd" shutdown -s -t 0
if "%bravo%"=="utkl" taskkill /f /im uTorrent.exe 
if "%bravo%"=="ut" start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe"
%bravo%
goto��bravo


:prgm
cls
echo #######################
echo #    0 ����           #
echo #    1 lantern        #
echo #    2 uTorrent       #
echo #    3 uTorrent ����  #
echo #    4 ����           #
echo #    5 CMD            #
echo #    6 else������     #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=��������룺 
if "%input%"=="0" goto main 
if "%input%"=="1" start "" "C:\Users\Bruce\AppData\Roaming\Lantern\lantern.exe"
if "%input%"=="2" start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe"

if "%input%"=="3" (taskkill /f /im uTorrent.exe & start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe" & pause)
 
if "%input%"=="4" start "" "E:\360 Cloud Drive\����er\�γ�\V\����"
if "%input%"=="5" start cmd
if "%input%"=="6" goto bravo
if "%input%"=="order" goto order
if "%input%"=="od" goto order
if "%input%"=="exprb" goto exprb
if "%input%"=="hell" goto taskmgr
if "%input%"=="tkrb" goto taskmgr
if "%input%"=="cmd" cmd
if "%input%"=="CMD" cmd
if "%input%"=="reboot" shutdown -r -t 0
if "%input%"=="rb" shutdown -r -t 0
if "%input%"=="shutdown" shutdown -s -t 0
if "%input%"=="sd" shutdown -s -t 0
if "%input%"=="ut" start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe"
if "%input%"=="utkl" taskkill /f /im uTorrent.exe 
::pause
goto prgm


