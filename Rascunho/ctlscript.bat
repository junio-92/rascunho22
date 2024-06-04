@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\xampp92\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp92\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\xampp92\ingres\scripts\ctl.bat (start /MIN /B C:\xampp92\ingres\scripts\ctl.bat START)
if exist C:\xampp92\mysql\scripts\ctl.bat (start /MIN /B C:\xampp92\mysql\scripts\ctl.bat START)
if exist C:\xampp92\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp92\postgresql\scripts\ctl.bat START)
if exist C:\xampp92\apache\scripts\ctl.bat (start /MIN /B C:\xampp92\apache\scripts\ctl.bat START)
if exist C:\xampp92\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp92\openoffice\scripts\ctl.bat START)
if exist C:\xampp92\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\xampp92\apache-tomcat\scripts\ctl.bat START)
if exist C:\xampp92\resin\scripts\ctl.bat (start /MIN /B C:\xampp92\resin\scripts\ctl.bat START)
if exist C:\xampp92\jetty\scripts\ctl.bat (start /MIN /B C:\xampp92\jetty\scripts\ctl.bat START)
if exist C:\xampp92\subversion\scripts\ctl.bat (start /MIN /B C:\xampp92\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\xampp92\lucene\scripts\ctl.bat (start /MIN /B C:\xampp92\lucene\scripts\ctl.bat START)
if exist C:\xampp92\third_application\scripts\ctl.bat (start /MIN /B C:\xampp92\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\xampp92\third_application\scripts\ctl.bat (start /MIN /B C:\xampp92\third_application\scripts\ctl.bat STOP)
if exist C:\xampp92\lucene\scripts\ctl.bat (start /MIN /B C:\xampp92\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\xampp92\subversion\scripts\ctl.bat (start /MIN /B C:\xampp92\subversion\scripts\ctl.bat STOP)
if exist C:\xampp92\jetty\scripts\ctl.bat (start /MIN /B C:\xampp92\jetty\scripts\ctl.bat STOP)
if exist C:\xampp92\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp92\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\xampp92\resin\scripts\ctl.bat (start /MIN /B C:\xampp92\resin\scripts\ctl.bat STOP)
if exist C:\xampp92\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\xampp92\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\xampp92\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp92\openoffice\scripts\ctl.bat STOP)
if exist C:\xampp92\apache\scripts\ctl.bat (start /MIN /B C:\xampp92\apache\scripts\ctl.bat STOP)
if exist C:\xampp92\ingres\scripts\ctl.bat (start /MIN /B C:\xampp92\ingres\scripts\ctl.bat STOP)
if exist C:\xampp92\mysql\scripts\ctl.bat (start /MIN /B C:\xampp92\mysql\scripts\ctl.bat STOP)
if exist C:\xampp92\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp92\postgresql\scripts\ctl.bat STOP)

:end

