@echo off
set ACTIVEMQ_HOME="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3"
set ACTIVEMQ_BASE="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3/bin/static/broker-2"
set ACTIVEMQ_CONF=%ACTIVEMQ_BASE%/conf
set PARAM=%1
:getParam
shift
if "%1"=="" goto end
set PARAM=%PARAM% %1
goto getParam
:end

%ACTIVEMQ_HOME%/bin/activemq %PARAM%