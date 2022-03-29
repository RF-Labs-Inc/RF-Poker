@echo off
echo Updating to v%1
taskkill /IM "RF Poker.exe" /F
del "%~dp0RF Poker.exe"
bitsadmin.exe /transfer "RF Update" https://github.com/RF-Labs-Inc/RF-Poker/releases/download/v%1/RF.Poker.exe "%~dp0\RF Poker.exe"
"%~dp0RF Poker.exe"