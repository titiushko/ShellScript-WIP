@echo off   
:start                         
cls
echo           ษอออออออออออออออออออออป  ษอออออออออออออออออออออป
echo           บ       Games         บ  บ      Utilities      บ             
echo           ฬอออออออออออออออออออออน  ฬอออออออออออออออออออออน 
echo           บ 1. Doom ][          บ  บ 1. Windows          บ 
echo           บ 2. Super Offroad    บ  บ 2. Windows setup    บ                 
echo           บ 3. Wacky Wheels     บ  บ 3. Nag-Buster       บ                
echo           บ 4. SimCity 2000     บ  บ 4. LockSmith        บ
echo           บ 5. Warcraft Two     บ  บ 5. Draw Perfect     บ
echo           บ 6. DeathManager     บ  บ P. Games            บ                    
echo           บ 7. SCURK            บ  ศออออออออัออออออออออออผ            
echo           บ U. Utilitiesฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฟ   ณ 
echo           บ E. Exit             บ      ฺมฤฤฤมฤฤฟ     
echo           บ !. Edit Menu        บ      ณ Games ณ    
echo           ศอออออออออออออออออออออผ      ภฤฤฤฤฤฤฤู       
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
echo ษอออออออออออออออออออออป  ษอออออออออออออออออออออป
echo บ       Games         บ  บ      Utilities      บ                      
echo ฬอออออออออออออออออออออน  ฬอออออออออออออออออออออน
echo บ 1. Doom ][          บ  บ 1. Windows          บ
echo บ 2. Super Offroad    บ  บ 2. Windows setup    บ                    
echo บ 3. Wacky Wheels     บ  บ 3. Nag-Buster       บ                   
echo บ 4. SimCity 2000     บ  บ 4. LockSmith        บ
echo บ 5. RailRoad Tycoon  บ  บ 5. Draw Perfect     บ
echo บ 6. DeathManager     บ  บ G. Games            บ                    
echo บ 7. SCURK            บ  ศออออออออัออออออออออออผ            
echo บ N. Utilitiesฤฤฤฤฤฤฤฤืฤฤฤฤฤฤฤฟ   ณ 
echo บ E. Exit             บ      ฺมฤฤฤมฤฤฤฤฤฤฟ     
echo บ !. Edit menu        บ      ณ Utilities ณ    
echo ศอออออออออออออออออออออผ      ภฤฤฤฤฤฤฤฤฤฤฤู   
    
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
                                                                                                          
