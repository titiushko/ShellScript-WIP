@echo off
:start
cls   
echo          浜様様様様様様様様様融
echo          �    Main Menu       �
echo          麺様様様様様様様様様郵
echo          �  1. Quick Link II  �
echo          �  2. Wordperfect    �
echo          �  3. Drawperfect    �
echo          �  4. Lotus 123      �
echo          �  5. Shazam         �
echo          �  6. Sideways       �
echo          �  7. QSB            �
echo          �  8. Shell to DOS   �
echo          藩様様様様様様様様様夕
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
