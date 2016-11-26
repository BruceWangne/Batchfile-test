@echo off
rd/s/q "E:\360 Cloud Drive\BT Download\台式独占\share\Matlab"


pause
set 连接名称=本地连接
set ip地址=192.168.1.2
set 子网掩码=255.255.255.0
set 网关地址=192.168.1.1
netsh interface ip set address name="%连接名称%" source=static addr=%ip地址% mask=%子网掩码% gateway=%网关地址% gwmetric=1
set 连接名称=本地连接
set DNS地址=61.134.1.34
netsh interface ip set dns name="本地连接" source=static addr=%DNS地址%
pause
exit