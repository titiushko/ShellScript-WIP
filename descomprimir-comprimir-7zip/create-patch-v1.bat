@echo off
set opcion=2
if %opcion%==1 goto opcion1
if %opcion%==2 goto opcion2

:opcion1
set directorio_origen="F:\tito.miguel\repositorios\App\package\bin"
set directorio_destino="%cd%"
set id_parche=app8.8.0.SP1.1
if not exist %directorio_destino%\%id_parche%\nul goto copiar_archivos
rd %directorio_destino%\%id_parche% /S /Q

:copiar_archivos
md %directorio_destino%\%id_parche%\WEB-INF\classes\com\factura
xcopy %directorio_origen%\com\factura\Mapper.class %directorio_destino%\%id_parche%\WEB-INF\classes\com\factura /F /Y

goto crear_documentacion

:opcion2
set nombre_war=app.8.8.0.72-758
set directorio_war="%cd%"
set id_parche=app8.8.0.SP1.1
if not exist %directorio_war%\%id_parche%\nul goto extraer_war
rd %directorio_war%\%id_parche% /S /Q

:extraer_war
7z x %directorio_war%\%nombre_war%.war -o%directorio_war%\%id_parche% Mapper.class -r

set directorio_destino=%directorio_war%

:crear_documentacion
set directorio_documentacion="C:\tito.miguel\documentos\app8.8.0.SP1"

md %directorio_destino%\%id_parche%\readmes
xcopy %directorio_documentacion%\app8.8.0.SP1.1.README.html %directorio_destino%\%id_parche%\readmes /F /Y

md %directorio_destino%\%id_parche%\updates
xcopy %directorio_documentacion%\app8.8.0.SP1.1.bar.txt %directorio_destino%\%id_parche%\updates /F /Y

if not exist %directorio_destino%\%id_parche%.bar goto comprimir_parche
del %directorio_destino%\%id_parche%.bar /Q

:comprimir_parche
7z a -tzip %directorio_destino%\%id_parche%.bar %directorio_destino%\%id_parche%\readmes\
7z a -tzip %directorio_destino%\%id_parche%.bar %directorio_destino%\%id_parche%\updates\
7z a -tzip %directorio_destino%\%id_parche%.bar %directorio_destino%\%id_parche%\WEB-INF\

rd %directorio_destino%\%id_parche% /S /Q

exit
