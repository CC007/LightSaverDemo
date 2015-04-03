@REM variables: set to correct values
@set mavenLocation=P:\Program Files\NetBeans 8.0.2\java\maven\bin\mvn.bat
@set projectLocation=D:\Local\My Documents\NetBeansProjects\LightSaverMaven
@set demoLocation=D:\Local\My Documents\NetBeansProjects\LightSaverDemo
@set rmiLocation=P:\Program Files\Java\jdk1.8.0\jre\bin\rmiregistry.exe

@REM set base string for executing project files
@set runStr=start cmd.exe /k ""%mavenLocation%" exec:java -Dexec.mainClass="com.github.cc007.lightsaver.

@REM Go to project folder
cd "%projectLocation%"

@REM run rmi registry
start cmd.exe /k ""%rmiLocation%""

@REM Run java programs
%runStr%datacontroller.DataController""
%runStr%light.Light" -Dexec.args="1 localhost""
