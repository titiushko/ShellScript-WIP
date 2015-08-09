@echo off
:start
cls   
echo          ษออออออออออออออออออออป
echo          บ    Main Menu       บ
echo          ฬออออออออออออออออออออน
echo          บ  1. Quick Link II  บ
echo          บ  2. Wordperfect    บ
echo          บ  3. Drawperfect    บ
echo          บ  4. Lotus 123      บ
echo          บ  5. Shazam         บ
echo          บ  6. Sideways       บ
echo          บ  7. QSB            บ
echo          บ  8. Shell to DOS   บ
echo          ศออออออออออออออออออออผ
choice:/c12345678

if errorlevel 8 goto exit
if errorlevel 7 goto qsb
if errorlevel 6 goto side
if errorlevel 5 goto shazam
if errorlevel 4 goto 123
if errorlevel 3 goto draw
if errorlevel 2 goto wp
if errorlevel 1 goto ql

:ql
cd\
cd ql2fax
ql2fax
GOTO start

:wp
cd\
cd wp51
wp
GOTO start

:draw
cd\
cd dr11
dr
GOTO start

:123
cd\
cd 123
123
GOTO start

:shazam
cd\
cd shazam
shazam
GOTO start

:side
cd\
cd sw123
sw123
GOTO start

:qsb
cd\
cd qsb
qsb
GOTO start

:exit
cls
cd\
cls
