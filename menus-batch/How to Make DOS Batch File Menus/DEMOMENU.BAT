@echo off   
:start                         
cls
echo           浜様様様様様様様様様様�  浜様様様様様様様様様様�
echo           �       Games         �  �      Utilities      �             
echo           麺様様様様様様様様様様�  麺様様様様様様様様様様� 
echo           � 1. Doom ][          �  � 1. Windows          � 
echo           � 2. Super Offroad    �  � 2. Windows setup    �                 
echo           � 3. Wacky Wheels     �  � 3. Nag-Buster       �                
echo           � 4. SimCity 2000     �  � 4. LockSmith        �
echo           � 5. Warcraft Two     �  � 5. Draw Perfect     �
echo           � 6. DeathManager     �  � P. Games            �                    
echo           � 7. SCURK            �  藩様様様用様様様様様様�            
echo           � U. Utilities陳陳陳陳彡陳陳陳�   � 
echo           � E. Exit             �      攸陳珍陳�     
echo           � !. Edit Menu        �      � Games �    
echo           藩様様様様様様様様様様�      青陳陳陳�       
echo push U for utilities and then 1 for windows

choice:/c1234567UE!
if errorlevel 10 goto edit
if errorlevel 9 goto exit
if errorlevel 8 goto menu2
if errorlevel 7 goto scurk
if errorlevel 6 goto dm
if errorlevel 5 goto war2
if errorlevel 4 goto sc2000
if errorlevel 3 goto wack
if errorlevel 2 goto offroad
if errorlevel 1 goto doom

:edit
cd\
edit menu.bat
GOTO start

:doom
cd\
cd games\doom2
doom2
GOTO start

:offroad
cd\
cd games\offroad
ironman
GOTO start
     
:wack
cd\
cd games\wacky
ww
goto start

:sc2000
cd\
cd games\sc2000
sc2000
GOTO start

:war2
cd\
war2
GOTO start

:dm
cd\
cd games\doom2
dm
GOTO start

:scurk
cd\ 
cd games\sc2000
scurk.com
GOTO start

:menu2
cls
echo 浜様様様様様様様様様様�  浜様様様様様様様様様様�
echo �       Games         �  �      Utilities      �                      
echo 麺様様様様様様様様様様�  麺様様様様様様様様様様�
echo � 1. Doom ][          �  � 1. Windows          �
echo � 2. Super Offroad    �  � 2. Windows setup    �                    
echo � 3. Wacky Wheels     �  � 3. Nag-Buster       �                   
echo � 4. SimCity 2000     �  � 4. LockSmith        �
echo � 5. RailRoad Tycoon  �  � 5. Draw Perfect     �
echo � 6. DeathManager     �  � G. Games            �                    
echo � 7. SCURK            �  藩様様様用様様様様様様�            
echo � N. Utilities陳陳陳陳彡陳陳陳�   � 
echo � E. Exit             �      攸陳珍陳陳陳�     
echo � !. Edit menu        �      � Utilities �    
echo 藩様様様様様様様様様様�      青陳陳陳陳陳�   
    
choice:/c12345G
if errorlevel 6 goto start
if errorlevel 5 goto draw
if errorlevel 4 goto lock
if errorlevel 3 goto nag 
if errorlevel 2 goto wins 
if errorlevel 1 goto win 

:win
cd\
c:\dos\win.bat
goto menu2

:wins
cd\
cd windows
setup
goto menu2

:nag
cd\
cd games\ufo\utils\buster
buster
GOTO menu2

:lock
cd\
cd games\ufo\utils\locksmth
lock
goto start

:draw 
cd\
cd pr20
pr
GOTO menu2

:exit
cls
cd\
cls
                                                                                                          
