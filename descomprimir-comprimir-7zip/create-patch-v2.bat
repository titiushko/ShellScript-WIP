@echo off
set war=app.8.8.0.72-758.war
set directorio="%cd%"
set id_parche=app8.8.0.SP1.1
set directorio_documentacion=%directorio%
if not exist %directorio%\%id_parche%\nul goto extraer
rd %directorio%\%id_parche% /S /Q
:extraer
7z x %directorio%\%war% -o%directorio%\%id_parche% WEB-INF\classes\com\factura\Mapper.class
md %directorio%\%id_parche%\readmes
xcopy %directorio_documentacion%\%id_parche%.README.html %directorio%\%id_parche%\readmes /F /Y
md %directorio%\%id_parche%\updates
xcopy %directorio_documentacion%\%id_parche%.bar.txt %directorio%\%id_parche%\updates /F /Y
if not exist %directorio%\%id_parche%.bar goto comprimir
del %directorio%\%id_parche%.bar /Q
:comprimir
7z a -tzip %directorio%\%id_parche%.bar %directorio%\%id_parche%\readmes\
7z a -tzip %directorio%\%id_parche%.bar %directorio%\%id_parche%\updates\
7z a -tzip %directorio%\%id_parche%.bar %directorio%\%id_parche%\WEB-INF\
rd %directorio%\%id_parche% /S /Q
exit
