@echo off 
::pin
goto main
echo ������PIN�룺
set /p pw0=
::if "%pw0%"=="8128" (cls & goto main) else (cls & echo PIN�����)
::goto pin 
:main 
cls
::echo ������������������������������������������������
::echo ������������������������������������������������
::echo ����   0 �˳�           ����
::echo ����   1 ���汸��       ����
::echo ����   2 ��ʱ�ػ�       ����
::echo ����   3 ��ʱ����       ����
::echo ����   4 ȡ���ػ���ʱ   ����
::echo ����   6 Դ����         ����
::echo ����   7 ������         ����
::echo ����   8 Win10��ֽ      ����
::echo ����   9 ��ʱ����       ����
::echo ����   A ������         ����
::echo ������������������������������������������������
::echo ������������������������������������������������
echo #######################
echo #    0 �˳�           #
echo #    1 ���汸��       #
echo #    2 ��ʱ�ػ�       #
echo #    3 ��ʱ����       #
echo #    4 ȡ���ػ���ʱ   #
echo #    5 ��������       #
echo #    6 Դ����         #
echo #    7 �����С�����   #
echo #    8 Win10��ֽ      #
echo #    9 ��ʱ����       #
echo #    A �����С�����   #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=��������룺 
if "%input%"=="0" goto exit 
if "%input%"=="1" goto backup 
if "%input%"=="2" goto shut_down 
if "%input%"=="3" goto re_boot 
if "%input%"=="4" goto cancel 
if "%input%"=="5" goto kidding
if "%input%"=="6" goto code
if "%input%"=="7" goto submain
if "%input%"=="8" goto bing
if "%input%"=="9" goto temp_bkup
if "%input%"=="a" goto alpha
if "%input%"=="reboot" shutdown -r -t 0
if "%input%"=="rb" shutdown -r -t 0
if "%input%"=="shutdown" shutdown -s -t 0
if "%input%"=="sd" shutdown -s -t 0
if "%input%"=="order" goto order
if "%input%"=="od" goto order
::if "%input%"=="6" (goto 6) else goto main
cls
goto main
pause 
exit 

:clear
echo ���ڽ�����ѡ��
cls
goto main

:submain
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
if "%input%"=="1" goto 2 
if "%input%"=="2" goto 3 
if "%input%"=="3" goto 4 
if "%input%"=="4" goto 5 
if "%input%"=="reboot" shutdown -r -t 0
if "%input%"=="rb" shutdown -r -t 0
if "%input%"=="shutdown" shutdown -s -t 0
if "%input%"=="sd" shutdown -s -t 0
if "%input%"=="advanced" goto mainp
::if "%input%"=="6" (goto 6) else goto main
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
::if "%code%"=="t6v5csu3" (cls & echo ������ȷ) else (cls & echo ������������� ���������롰back��  & goto 1) 
echo ���ڿ�ʼ���汸��
pause
rd/s/q D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\
::rd/s/q H:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\
rd/s/q "E:\360 Cloud Drive\BT Download\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"
rd/s/q "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"
::rd/s/q E:\360~1\BT~1\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
::pause
::Xcopy C:\Users\Bruce\Desktop D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
Xcopy %~d0 D:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
Xcopy %~d0 H:\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
Xcopy %~d0 "F:\Cloud Backup\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy %~d0 "E:\360 Cloud Drive\BT Download\Backup\Desktop%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\Data "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\*.dat "E:\360 Cloud Drive\BT Download\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\DBackup%date:~2,2%.%date:~5,2%.%date:~8,2%\"
Xcopy D:\Data "F:\Cloud Backup\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\"/e
Xcopy D:\*.dat "F:\Cloud Backup\Data Backup\Data%date:~2,2%.%date:~5,2%.%date:~8,2%\DBackup%date:~2,2%.%date:~5,2%.%date:~8,2%\"
pause
goto main
pause 
exit 

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
pause 
exit 

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
pause 
exit 
 

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
pause 
exit 

:code 
cls
type D:\BAT.dat
pause
cls
goto main
pause 
exit 


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
::pause
cd D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
pause
cls
echo ��Ӧ�۽�������ֽ�ѱ�����ϣ����ֶ�ɾ���������ٴ����г���
pause
cls
goto main
pause 
exit

:order 
cls
::pause
::rd/s/q D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
::Xcopy C:\Users\Bruce\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\/e
setlocal enabledelayedexpansion
for /r  D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\ %%i in (*.*) do (
    set /a n+=1
    ren "%%i" 0!n!%%~xi
 )
::pause
cd D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
pause
cls
goto main
pause 
exit

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
pause
goto main
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:alpha
cls
echo �����С�����
echo �����ڴ� 
pause
cls
goto main
pause 
exit 




