@echo off
call findday.bat Sun Mon Tue Wed Thu Fri Sat
:start
cls
type c:\temp\~finday.tmp
echo          浜様様様様様様�
echo          �  Main Menu  �
echo          麺様様様様様様�
echo          �1.+ Windows  � 
echo          �2.+ Games    �   
echo          �3.+ Utilities�
echo          �4.  Exit     �
echo          藩様様様様様様�   
echo                          Time remaining: 10                          
choice Your choice: /c:12345 /t5,7 
if errorlevel 5 goto time3
if errorlevel 4 goto exit
if errorlevel 3 goto utils
if errorlevel 2 goto games
if errorlevel 1 goto windows


:time3
cls
echo          浜様様様様様様�
echo          �  Main Menu  �
echo          麺様様様様様様�
echo          �1.+ Windows  � 
echo          �2.+ Games    �   
echo          �3.+ Utilities�
echo          �4.  Exit     �
echo          藩様様様様様様�   
echo                          Time remaining: 03
choice Your choice: /c:12345 /t5,1 
if errorlevel 5 goto time2
if errorlevel 4 goto exit
if errorlevel 3 goto utils
if errorlevel 2 goto games
if errorlevel 1 goto windows

:time2
cls
echo          浜様様様様様様�
echo          �  Main Menu  �
echo          麺様様様様様様�
echo          �1.+ Windows  � 
echo          �2.+ Games    �   
echo          �3.+ Utilities�
echo          �4.  Exit     �
echo          藩様様様様様様�   
echo                          Time remaining: 02
choice Your choice: /c:12345 /t5,1 
if errorlevel 5 goto time1
if errorlevel 4 goto exit
if errorlevel 3 goto utils
if errorlevel 2 goto games
if errorlevel 1 goto windows

:time1
cls
echo          浜様様様様様様�
echo          �  Main Menu  �
echo          麺様様様様様様�
echo          �1.+ Windows  � 
echo          �2.+ Games    �   
echo          �3.+ Utilities�
echo          �4.  Exit     �
echo          藩様様様様様様�   
echo                          Time remaining: 01
choice Your choice: /c:12345 /t5,1 
if errorlevel 5 goto runwin
if errorlevel 4 goto exit
if errorlevel 3 goto utils
if errorlevel 2 goto games
if errorlevel 1 goto windows


:games
cls             
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様�
echo   �          Games Menu         �
echo   麺様様様様様様様様様様様様様様�
echo   �  1.+ Windows                �
echo   �  2.- Games                  �
echo   �          A.+ WarCraft 2     �
echo   �          B.+ Duke Nukem 3D  �
echo   �          C.+ SimCity 2000   �
echo   �          D.- Wacky Wheels   �
echo   �          E.- Super Offroad  �
echo   �          F.- Outpost        �
echo   �          G.- Myst           �
echo   �          H.- Theme Park     �
echo   �  3.+ Utilities              �
echo   �  4.  Exit                   �
echo   藩様様様様様様様様様様様様様様�                             
choice Your choice: /c:12ABCDEFGH34
if errorlevel 12 goto exit
if errorlevel 11 goto utils
if errorlevel 10 goto theme
if errorlevel 9 goto myst
if errorlevel 8 goto outpost
if errorlevel 7 goto offroad
if errorlevel 6 goto wacky
if errorlevel 5 goto simcity
if errorlevel 4 goto duke
if errorlevel 3 goto war2
if errorlevel 2 goto start
if errorlevel 1 goto windows

:windows
cls
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様融
echo   �         Windows Menu         �
echo   麺様様様様様様様様様様様様様様郵
echo   �  1.- Windows                 �
echo   �            A. Run Windows    �
echo   �            B. WordPerfect    �
echo   �            C. Lotus          �
echo   �            D. Excel          �
echo   �            E. Internet       �
echo   �            F. Quicklink      �
echo   �  2.+ Games                   �
echo   �  3.+ Utilities               �
echo   �  4.  Exit                    �
echo   藩様様様様様様様様様様様様様様夕
choice Your choice: /c:1ABCDEF234
if errorlevel 10 goto exit
if errorlevel 9 goto utils
if errorlevel 8 goto games
if errorlevel 7 goto ql2
if errorlevel 6 goto ping
if errorlevel 5 goto excel
if errorlevel 4 goto lotus
if errorlevel 3 goto wp
if errorlevel 2 goto runwin
if errorlevel 1 goto start

:utils
cls
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様様融
echo   �       Utilities Menu           �
echo   麺様様様様様様様様様様様様様様様郵
echo   �   1.+ Windows                  �
echo   �   2.+ Games                    �
echo   �   3.- Utilities                �
echo   �               A. Windows Setup �
echo   �               B. LockSmith PC  �
echo   �               C. Nag-Buster    �
echo   �               D. Virus Scan    �
echo   �               E. SBP Mixer     �
echo   �               F. SBP-Set       �
echo   �               G. CD Player     �
echo   �   4.  Exit                     �
echo   藩様様様様様様様様様様様様様様様夕
choice Your choice: /c:123ABCDEFG4
if errorlevel 11 goto exit
if errorlevel 10 goto cdplayer
if errorlevel 9 goto sbpset
if errorlevel 8 goto sbpmixer
if errorlevel 7 goto virus
if errorlevel 6 goto nag
if errorlevel 5 goto locksmith
if errorlevel 4 goto winsetup
if errorlevel 3 goto start
if errorlevel 2 goto games
if errorlevel 1 goto windows

:war2
cls
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様�
echo   �          Games Menu         �
echo   麺様様様様様様様様様様様様様様�
echo   �  1.+ Windows                �
echo   �  2.- Games                  �
echo   �          A.- WarCraft 2     �
echo   �                 X. Play     � 
echo   �                 Y. Editor   �
echo   �                 Z. Setup    �
echo   �          B.+ Duke Nukem 3D  �
echo   �          C.+ SimCity 2000   �
echo   �          D.  Wacky Wheels   �
echo   �          E.  Super Offroad  �
echo   �          F.  Outpost        �
echo   �          G.  Myst           �
echo   �          H.  Theme Park     �
echo   �  3.+ Utilities              �
echo   �  4.  Exit                   �
echo   藩様様様様様様様様様様様様様様�                             
choice Your choice: /c:12AXYZBCDEFGH34
if errorlevel 15 goto exit
if errorlevel 14 goto utils
if errorlevel 13 goto theme
if errorlevel 12 goto myst
if errorlevel 11 goto outpost
if errorlevel 10 goto offroad
if errorlevel 9 goto wacky
if errorlevel 8 goto simcity
if errorlevel 7 goto duke
if errorlevel 6 goto war2setup
if errorlevel 5 goto war2edit
if errorlevel 4 goto war2play
if errorlevel 3 goto games
if errorlevel 2 goto start
if errorlevel 1 goto windows

:duke
cls
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様�
echo   �          Games Menu         �
echo   麺様様様様様様様様様様様様様様�
echo   �  1.+ Windows                �
echo   �  2.- Games                  �
echo   �          A.+ WarCraft 2     �
echo   �          B.- Duke Nukem 3D  �
echo   �                 X. Play     �
echo   �                 Y. Editor   �
echo   �                 Z. Setup    �
echo   �          C.+ SimCity 2000   �
echo   �          D.- Wacky Wheels   �
echo   �          E.- Super Offroad  �
echo   �          F.- Outpost        �
echo   �          G.- Myst           �
echo   �          H.- Theme Park     �
echo   �  3.+ Utilities              �
echo   �  4.- Exit                   �
echo   藩様様様様様様様様様様様様様様�                             
choice Your choice: /c:12ABXYZCDEFGH34
if errorlevel 15 goto exit
if errorlevel 14 goto utils
if errorlevel 13 goto theme
if errorlevel 12 goto myst
if errorlevel 11 goto outpost
if errorlevel 10 goto offroad
if errorlevel 9 goto wacky
if errorlevel 8 goto simcity
if errorlevel 7 goto dukesetup
if errorlevel 6 goto dukeedit
if errorlevel 5 goto dukeplay
if errorlevel 4 goto games
if errorlevel 3 goto war2
if errorlevel 2 goto start
if errorlevel 1 goto windows
:simcity
cls
type c:\temp\~finday.tmp
echo   浜様様様様様様様様様様様様様様�
echo   �          Games Menu         �
echo   麺様様様様様様様様様様様様様様�
echo   �  1.+ Windows                �
echo   �  2.- Games                  �
echo   �          A.+ WarCraft 2     �
echo   �          B.+ Duke Nukem 3D  �
echo   �          C.+ SimCity 2000   �
echo   �                 X. Play     �
echo   �                 Y. SCURK    �
echo   �                 Z. Setup    �
echo   �          D.- Wacky Wheels   �
echo   �          E.- Super Offroad  �
echo   �          F.- Outpost        �
echo   �          G.- Myst           �
echo   �          H.- Theme Park     �
echo   �  3.+ Utilities              �
echo   �  4.  Exit                   �
echo   藩様様様様様様様様様様様様様様�                             
choice Your choice: /c:12ABCXYZDEFGH34
if errorlevel 15 goto exit
if errorlevel 14 goto utils
if errorlevel 13 goto theme
if errorlevel 12 goto myst
if errorlevel 11 goto outpost
if errorlevel 10 goto offroad
if errorlevel 9 goto wacky
if errorlevel 8 goto simsetup
if errorlevel 7 goto scurk
if errorlevel 6 goto playsimcity
if errorlevel 5 goto games
if errorlevel 4 goto duke
if errorlevel 3 goto war2
if errorlevel 2 goto start
if errorlevel 1 goto windows

:runwin
cd\
c:\dos\win.bat
goto start

:lotus
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\123r4w\programs\123.exe
goto start

:excel
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\msoffice\excel\excel.exe
goto start

:ql2
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\ql2faxw\ql2faxw.exe
goto start

:ping
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\netapps\distinct\ping.exe
goto start

:wp
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\corelwp\wpwin\wpwin.exe
goto start

:wacky
cd\
c:\games\wacky\ww.exe
goto start
                                
:offroad
cd\
c:\games\offroad\ironman.bat
goto start

:myst
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\games\myst\myst.exe
goto start

:theme
cd\
c:\theme.cd\theme.bat
goto start

:outpost
cd\
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\games\outpost\outpost.exe
goto start             

:cdplayer
cd\
c:\sbpro\playcd\cdplyr.exe
goto start

:sbpset
cd\
c:\sbpro\sbp-set.exe

:sbpmixer:
LH /L:0;1,42384 /S C:\DOS\SMARTDRV.EXE
C:\WINDOWS\WIN c:\sbpro\winappl\SBPMIXER.EXE
goto start

:virus
cd\
a:
a:\scan c: /clean
goto start

:nag
cd\
c:\games\ufo\utils\buster\buster.exe
goto start

:locksmith
cd\
c:\games\ufo\utils\locksmth\lock.exe
goto start

:winsetup
cd\
c:\windows\setup.exe
goto start

:war2setup
cd\
c:\games\war2\setup.exe
goto start

:war2edit
cd\
c:\games\war2\war2edit.exe
goto start

:war2play
cd\
c:\games\war2\war2.exe
goto start

:dukesetup
cd\
cd games\duke3d
setup.exe
goto start

:dukeedit
cd\
cd games\duke3d
build.exe


:dukeplay
echo haha you can't play
echo go play some other thing
echo because you're not playin Duke3d
pause
goto start

:simsetup
cd\
c:\games\sc2000\install.exe
goto start

:scurk
cd\
c:\games\sc2000\scurk.com
goto start

:playsimcity
cd\
c:\games\sc2000\sc2000.exe
goto start

:exit
cls
cd\
cls











