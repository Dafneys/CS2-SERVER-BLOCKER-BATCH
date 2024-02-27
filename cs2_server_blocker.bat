@echo off

:: BatchGotAdmin
:-------------------------------------
REM --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
:--------------------------------------

set "IPAddresses=155.133.248.36,155.133.248.37,155.133.248.40,155.133.248.41"
set "RuleName=#cs2 - ams - Amsterdam (Netherlands)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.199.166,162.254.199.167,162.254.199.170,162.254.199.173,162.254.199.178,162.254.199.180"
set "RuleName=#cs2 - atl - Atlanta (Georgia)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.233.98,155.133.233.99"
set "RuleName=#cs2 - bom - Mumbai (India)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.253.38,155.133.253.39,155.133.253.54,155.133.253.55"
set "RuleName=#cs2 - dfw - Dallas (Texas)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=185.25.183.163,185.25.183.179"
set "RuleName=#cs2 - dxb - Dubai (United Arab Emirates)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.255.98,155.133.255.99,155.133.255.162,155.133.255.163"
set "RuleName=#cs2 - eze - Buenos Aires (Argentina)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.226.68,155.133.226.69,155.133.226.70,155.133.226.71,155.133.226.72,155.133.226.73,162.254.197.36,162.254.197.37,162.254.197.52"
set "RuleName=#cs2 - fra - Frankfurt (Germany)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.227.35,155.133.227.36,155.133.227.51,155.133.227.52"
set "RuleName=#cs2 - gru - Sao Paulo (Brazil)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=65.109.17.210,65.109.21.117,65.109.152.15,65.109.152.16,65.109.153.54"
set "RuleName=#cs2 - hel - Helsinki (Finland)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=103.28.54.163,103.28.54.164,103.28.54.166,103.28.54.167,103.28.54.168,103.28.54.179,103.28.54.180,103.28.54.182,103.28.54.183,103.28.54.184"
set "RuleName=#cs2 - hkg - Hong Kong"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.192.66,162.254.192.67,162.254.192.68,162.254.192.70,162.254.192.72,162.254.192.73"
set "RuleName=#cs2 - iad - Sterling (Virginia)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=147.75.193.63,147.75.193.65"
set "RuleName=#cs2 - jfk - New York"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.238.178,155.133.238.194"
set "RuleName=#cs2 - jnb - Johannesburg (South Africa)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.195.70,162.254.195.72,162.254.195.73,162.254.195.74"
set "RuleName=#cs2 - lax - Los Angeles (California)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.196.66,162.254.196.70,162.254.196.82,162.254.196.85"
set "RuleName=#cs2 - lhr - London (England)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.244.35,155.133.244.36,155.133.244.51,155.133.244.52"
set "RuleName=#cs2 - lim - Lima (Peru)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.232.98"
set "RuleName=#cs2 - maa - Chennai (India)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.246.34,155.133.246.50"
set "RuleName=#cs2 - mad - Madrid (Spain)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.193.71,162.254.193.73,162.254.193.77,162.254.193.98,162.254.193.99,162.254.193.100"
set "RuleName=#cs2 - ord - Chicago (Illinois)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=185.25.182.18,185.25.182.19,185.25.182.50,185.25.182.51"
set "RuleName=#cs2 - par - Paris (France)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=125.88.173.11,125.88.173.12,125.88.173.13,125.88.173.14"
set "RuleName=#cs2 - pwg - Perfect World Guangdong 1 (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=220.194.68.11,220.194.68.12,220.194.68.13,220.194.68.14"
set "RuleName=#cs2 - pwj - Perfect World Tianjin (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=61.182.135.15,61.182.135.16,61.182.135.18,61.182.135.72"
set "RuleName=#cs2 - pwu - Perfect World Hebei (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=116.211.132.11,116.211.132.12,116.211.132.13,116.211.132.14"
set "RuleName=#cs2 - pww - Perfect World Wuhan (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=183.136.230.11,183.136.230.12,183.136.230.13,183.136.230.14"
set "RuleName=#cs2 - pwz - Perfect World Zhejiang (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.249.163,155.133.249.179"
set "RuleName=#cs2 - scl - Santiago (Chile)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=205.196.6.210,205.196.6.211,205.196.6.212,205.196.6.213"
set "RuleName=#cs2 - sea - Seattle (Washington)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=146.66.152.36,146.66.152.37,146.66.152.41,146.66.152.42"
set "RuleName=#cs2 - seo - Seoul (South Korea)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=103.10.124.116,103.10.124.117,103.10.124.118,103.10.124.119,103.10.124.120,103.10.124.121"
set "RuleName=#cs2 - sgp - Singapore"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=180.153.252.11,180.153.252.12,180.153.252.13,180.153.252.14"
set "RuleName=#cs2 - shb - Perfect World (sha-4) Backbone (Shanghai, China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=162.254.198.41,162.254.198.42,162.254.198.43,162.254.198.101,162.254.198.102,162.254.198.103"
set "RuleName=#cs2 - sto - Stockholm - Kista (Sweden)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=103.10.125.146,103.10.125.147,103.10.125.154,103.10.125.155"
set "RuleName=#cs2 - syd - Sydney (Australia)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=45.121.184.5,45.121.184.6,45.121.184.24,45.121.184.25,45.121.184.26,45.121.184.27"
set "RuleName=#cs2 - tyo - Tokyo Koto City (Japan)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=146.66.155.66,146.66.155.67,146.66.155.68,146.66.155.69"
set "RuleName=#cs2 - vie - Vienna (Austria)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.230.98,155.133.230.99,155.133.230.100,155.133.230.101"
set "RuleName=#cs2 - waw - Warsaw (Poland)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.224.20,155.133.224.21"
set "RuleName=#cs2 - bom2 - Mumbai (India)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=155.133.252.37,155.133.252.38,155.133.252.52,155.133.252.53,155.133.252.84,155.133.252.85,155.133.252.86,155.133.252.87,155.133.252.88,155.133.252.89"
set "RuleName=#cs2 - sto2 - Stockholm - Bromma (Sweden)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=183.232.229.200,183.232.229.201,183.232.229.202,183.232.229.203,183.232.229.204,183.232.229.205"
set "RuleName=#cs2 - canm - Perfect World Guangdong 2 - Mobile (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=112.19.193.192,112.19.193.193"
set "RuleName=#cs2 - ctum - Alibaba Cloud Chengdu - Mobile (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=117.184.42.132,117.184.42.133,117.184.42.134,117.184.42.135,117.184.42.136,117.184.42.137"
set "RuleName=#cs2 - sham - Perfect World Shanghai - Mobile (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=111.32.164.141,111.32.164.142,111.32.164.143,111.32.164.144,111.32.164.145,111.32.164.146"
set "RuleName=#cs2 - tsnm - Perfect World Tianjin - Mobile (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=125.88.174.11,125.88.174.12,125.88.174.13,125.88.174.14,125.88.174.15,125.88.174.16"
set "RuleName=#cs2 - cant - Perfect World Guangdong 2 - Telecom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=118.123.224.192,118.123.224.193"
set "RuleName=#cs2 - ctut - Alibaba Cloud Chengdu - Telecom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=121.46.225.11,121.46.225.12,121.46.225.13,121.46.225.14,121.46.225.15,121.46.225.16"
set "RuleName=#cs2 - shat - Perfect World Shanghai - Telecom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=42.81.120.140,42.81.120.141,42.81.120.142,42.81.120.143,42.81.120.144,42.81.120.145"
set "RuleName=#cs2 - tsnt - Perfect World Tianjin - Telecom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=157.255.37.14,157.255.37.15,157.255.37.16,157.255.37.17,157.255.37.18,157.255.37.19"
set "RuleName=#cs2 - canu - Perfect World Guangdong 2 - Unicom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=101.206.160.192,101.206.160.193"
set "RuleName=#cs2 - ctuu - Alibaba Cloud Chengdu - Unicom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=211.95.37.141,211.95.37.142,211.95.37.143,211.95.37.144,211.95.37.145,211.95.37.146"
set "RuleName=#cs2 - shau - Perfect World Shanghai - Unicom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

set "IPAddresses=125.39.181.11,125.39.181.12,125.39.181.13,125.39.181.14,125.39.181.15,125.39.181.16"
set "RuleName=#cs2 - tsnu - Perfect World Tianjin - Unicom (China)"
netsh advfirewall firewall add rule name="%RuleName%" dir=out action=block remoteip=%IPAddresses%

pause
