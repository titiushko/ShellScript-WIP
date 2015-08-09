@echo off
:inicio
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Este programa instalara COMVICONPRO en su computadora.
set /p var=Continuar? Escribir 'S' para continuar ó 'N' para salir: 
if not defined var goto inicio
if %var%==S goto opcion_si
if %var%==s goto opcion_si
if %var%==N exit
if %var%==n exit
goto inicio
:opcion_si
echo.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Instalando Mozilla Firefox, espere por favor . . .
archivos\componentes\mozillafirefox.exe -ms
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Instalando Flash Player, espere por favor . . .
archivos\componentes\flashplayer.exe /install
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Flash Player se ha instalado con éxito!
echo.
echo.
echo Instalando WampServer, espere por favor . . .
archivos\componentes\wampserver.exe
regedit.exe /s archivos\configuracion\wampserver.reg
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Flash Player se ha instalado con éxito!
echo.
echo.
echo WampServer se ha instalado con éxito!
echo.
echo.
echo Instalando COMVICONPRO, espere por favor . . .
del c:\wamp\www\*.* /S /Q
xcopy archivos\sistema c:\wamp\www\ /E
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Flash Player se ha instalado con éxito!
echo.
echo.
echo WampServer se ha instalado con éxito!
echo.
echo.
echo COMVICONPRO se ha instalado con éxito!
echo.
echo.
echo Configurando COMVICONPRO, espere por favor . . .
copy archivos\configuracion\wampmanager.conf c:\wamp\
copy archivos\configuracion\config.inc.php c:\wamp\apps\phpmyadmin3.4.5\
copy archivos\configuracion\httpd-vhosts.conf c:\wamp\bin\apache\apache2.2.21\conf\original\extra\
copy archivos\configuracion\hosts c:\windows\system32\drivers\etc\
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Flash Player se ha instalado con éxito!
echo.
echo.
echo WampServer se ha instalado con éxito!
echo.
echo.
echo COMVICONPRO se ha instalado con éxito!
echo.
echo.
echo COMVICONPRO se ha configurado con éxito!
echo.
echo.
echo Creando la Base de Datos, espere por favor . . .
c:\wamp\bin\mysql\mysql5.5.16\bin\mysql.exe -uroot --password= < archivos\basedatos\crear_usuario.sql
c:\wamp\bin\mysql\mysql5.5.16\bin\mysql.exe -uvidrio --password=ciclopentanoperhidrofenantreno < archivos\basedatos\crear_base_datos.sql
c:\wamp\bin\mysql\mysql5.5.16\bin\mysql.exe -uvidrio --password=ciclopentanoperhidrofenantreno < respaldo_base_datos\respaldo_base_datos.sql
cls
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::   BIENVENIDO AL PROGRAMA DE INSTALACION   ::
echo ::   SISTEMA INFORMATICO PARA AYUDAR EN EL   ::
echo ::   REGISTRO DE COMPRAS DE VIDRIO Y EN EL   ::
echo ::      CONTROL DE PROVEEDORES DE VICAL      ::
echo ::          EL SALVADOR (COMVICONPRO)        ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Instalando COMVICOMPRO.
echo Se instalara previamente los componentes necesarios
echo para poder utilizar COMVICONPRO.
echo.
echo.
echo Mozilla Firefox se ha instalado con éxito!
echo.
echo.
echo Flash Player se ha instalado con éxito!
echo.
echo.
echo WampServer se ha instalado con éxito!
echo.
echo.
echo COMVICONPRO se ha instalado con éxito!
echo.
echo.
echo COMVICONPRO se ha configurado con éxito!
echo.
echo.
echo Base de Datos creada con éxito!
echo.
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo ::					     ::
echo ::  EL PROGRAMA DE INSTALACION A TERMINADO   ::
echo ::					     ::
echo :::::::::::::::::::::::::::::::::::::::::::::::
echo.
echo.
echo Presione una tecla para salir del programa de instalación
echo y abrir COMVICONPRO para comenzar a usarlo . . .
pause >nul
"c:\program files\mozilla firefox\firefox.exe" COMVICONPRO
exit