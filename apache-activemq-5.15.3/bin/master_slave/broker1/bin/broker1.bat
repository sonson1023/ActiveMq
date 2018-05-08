@echo off
set ACTIVEMQ_HOME="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3"
set ACTIVEMQ_BASE="C:/Users/admin/Downloads/apache-activemq-5.15.3-bin(1)/apache-activemq-5.15.3/bin/master_slave/broker1"
set ACTIVEMQ_CONF=%ACTIVEMQ_HOME%/conf

set PARAM=%1
:getParam
shift
if "%1"=="" goto end
set PARAM=%PARAM% %1
goto getParam
:end

%ACTIVEMQ_HOME%/bin/activemq %PARAM%