:: VARIABLES EXPANDIDAS
:: %~I - expande %I quitando las comillas (") que pudiera haber
:: %~fI - expande %I a un nombre de ruta calificado
:: %~dI - expande %I sólo a una letra de unidad
:: %~pI - expande %I sólo a una ruta
:: %~nI - expande %I sólo a un nombre de archivo
:: %~xI - expande %I sólo a una extensión de archivo
:: %~sI - ruta expandida contiene sólo nombres cortos
:: %~aI - expande %I a atributos de archivos
:: %~tI - expande %I a fecha/hora del archivo
:: %~zI - expande %I a tamaño del archivo
:: %~$PATH:I - busca los directorios de la lista

:: %cd% - directorio actual

@echo off
echo directorio actual: %cd%
echo %0 
echo %~s0 
echo %~d0%~p0 
pause
exit
