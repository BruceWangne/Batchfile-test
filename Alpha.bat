@echo off
title 命令提示符 Edit by Bruce Wangne
::pin
goto bravo
goto main
echo 请输入PIN码：
set /p pw0=
::if "%pw0%"=="8128" (cls & goto main) else (cls & echo PIN码错误)
::goto pin 
:main 
cls
::echo ┏━━━━━━━━━━━━━━━━━━━━━━┓
::echo ┃┏━━━━━━━━━━━━━━━━━━━━┓┃
::echo ┃┃                    ┃┃
::echo ┃┗━━━━━━━━━━━━━━━━━━━━┛┃
::echo ┗━━━━━━━━━━━━━━━━━━━━━━┛
echo #######################
echo #    0 退出           #
echo #    1 桌面备份       #
echo #    2 定时菜单       #
echo #    3 取消关机定时   #
echo #    4 立即重启       #
echo #    5 源代码         #
echo #    6 showing off    #
echo #    7 Win10壁纸      #
echo #    8 临时备份       #
echo #    9 重启资源管理器 #
echo #    a CMD            #
echo #    b 启动应用程序   #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=请输入代码： 
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
echo 正在进入主选单
cls
goto main

:schedule
cls
echo #######################
echo ##   定时菜单集合    ##
echo #######################
echo #    0 返回           #
echo #    1 定时关机       #
echo #    2 定时重启       #
echo #    3 取消关机定时   #
echo #    4 立即重启       #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=请输入代码： 
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
echo 感谢使用
::pause
exit

:backup
::echo 请输入备份密码（CODE I）
::set /p code=
::if "%code%"=="back" (cls & echo 返回主选单 & goto clear) 
::if "%code%"=="8128" (cls & echo 密码正确) else (cls & echo 密码错误，请重试 返回请输入“back”  & goto 1) 
echo 正在开始桌面备份
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
::echo 请输入密码
::set /p pw=
::if "%pw%"=="back" (cls & echo 返回主选单 & goto clear) 
::if "%pw%"=="bruce" (echo 密码正确) else (cls & echo 密码错误，请重试 返回请输入“back”  & goto 2)
echo 请输入定时关机倒计时时间（整数小时） 
set /p hours=
set /a time=%hours%*3600
echo "%hours%"小时后关机
shutdown -s -t %time%
echo 取消请输入c
set /p can=
if "%can%"=="c" goto 4 
echo 关机未取消
pause
goto main 

:re_boot 
::echo 请输入密码
::set /p pw=
::if "%pw%"=="back" (cls & echo 返回主选单 & goto clear) 
::if "%pw%"=="bruce" (echo 密码正确) else (cls & echo 密码错误，请重试 返回请输入“back”  & goto 3)
echo 请输入定时重启倒计时时间（整数小时） 
set /p hours=
set /a time=%hours%*3600
echo "%hours%"小时后重启
shutdown -r -t %time%
echo 取消请输入c
set /p can=
if "%can%"=="c" goto 4 
echo 重启未取消
pause
goto main 
 

:cancel
cls
shutdown -a
echo 已取消关机或重启计划！
pause 
cls
goto main
exit 

:kidding 
cls
echo 请输入密码
set /p scan=
echo r u sure
pause 
echo 算了，反正我也不会给你反悔的机会了，啦啦啦！！！
pause 
echo 哈哈！骗你的！
pause 
echo 你以为我会把立即重启放在这么明显的位置么？愚蠢的人类！
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
echo 必应聚焦锁屏壁纸已保存完毕，请手动删除干扰项再次排序！
start D:\Bing_pho\%date:~2,2%.%date:~5,2%.%date:~8,2%\
pause
cls
goto main


:order 
cls
set n=
set /p pre=请输入前缀：
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
echo 正在开始临时备份
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
echo 重启资源管理器？
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
goto　bravo


:prgm
cls
echo #######################
echo #    0 返回           #
echo #    1 lantern        #
echo #    2 uTorrent       #
echo #    3 uTorrent 重启  #
echo #    4 助教           #
echo #    5 CMD            #
echo #    6 else。。。     #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=请输入代码： 
if "%input%"=="0" goto main 
if "%input%"=="1" start "" "C:\Users\Bruce\AppData\Roaming\Lantern\lantern.exe"
if "%input%"=="2" start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe"

if "%input%"=="3" (taskkill /f /im uTorrent.exe & start "" "E:\360 Cloud Drive\BT Download\SHU-BT Download\utorrent\uTorrent.exe" & pause)
 
if "%input%"=="4" start "" "E:\360 Cloud Drive\孵蛋er\课程\V\助教"
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


