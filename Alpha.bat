@echo off 
::pin
goto main
echo 请输入PIN码：
set /p pw0=
::if "%pw0%"=="8128" (cls & goto main) else (cls & echo PIN码错误)
::goto pin 
:main 
cls
::echo ┏━━━━━━━━━━━━━━━━━━━━━━┓
::echo ┃┏━━━━━━━━━━━━━━━━━━━━┓┃
::echo ┃┃   0 退出           ┃┃
::echo ┃┃   1 桌面备份       ┃┃
::echo ┃┃   2 定时关机       ┃┃
::echo ┃┃   3 定时重启       ┃┃
::echo ┃┃   4 取消关机定时   ┃┃
::echo ┃┃   6 源代码         ┃┃
::echo ┃┃   7 测试中         ┃┃
::echo ┃┃   8 Win10壁纸      ┃┃
::echo ┃┃   9 临时备份       ┃┃
::echo ┃┃   A 建设中         ┃┃
::echo ┃┗━━━━━━━━━━━━━━━━━━━━┛┃
::echo ┗━━━━━━━━━━━━━━━━━━━━━━┛
echo #######################
echo #    0 退出           #
echo #    1 桌面备份       #
echo #    2 定时关机       #
echo #    3 定时重启       #
echo #    4 取消关机定时   #
echo #    5 立即重启       #
echo #    6 源代码         #
echo #    7 测试中。。。   #
echo #    8 Win10壁纸      #
echo #    9 临时备份       #
echo #    A 建设中。。。   #
echo #######################
echo copyright@ Bruce Wangne
echo mail:qi.wang@outlook.ie
set /p input=请输入代码： 
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
echo 正在进入主选单
cls
goto main

:submain
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
echo 感谢使用
::pause
exit

:backup
::echo 请输入备份密码（CODE I）
::set /p code=
::if "%code%"=="back" (cls & echo 返回主选单 & goto clear) 
::if "%code%"=="t6v5csu3" (cls & echo 密码正确) else (cls & echo 密码错误，请重试 返回请输入“back”  & goto 1) 
echo 正在开始桌面备份
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
pause 
exit 

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
pause 
exit 
 

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
echo 必应聚焦锁屏壁纸已保存完毕，请手动删除干扰项再次运行程序！
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
echo 正在开始临时备份
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
echo 建设中。。。
echo 敬请期待 
pause
cls
goto main
pause 
exit 




