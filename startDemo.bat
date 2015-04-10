@REM variables: set to correct values
@set mavenLocation=P:\Program Files\NetBeans 8.0.2\java\maven\bin\mvn.bat
@set projectLocation=D:\Local\My Documents\NetBeansProjects\LightSaverMaven
@set demoLocation=D:\Local\My Documents\NetBeansProjects\LightSaverDemo
@set rmiLocation=P:\Program Files\Java\jdk1.8.0\jre\bin\rmiregistry.exe
@set rmqLocation=P:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.0\sbin\rabbitmq-server.bat

@REM set base string for executing project files
@set runStr=start cmd.exe /k ""%mavenLocation%" exec:java -Dexec.mainClass="com.github.cc007.lightsaver.

@REM Go to project bin folder
cd "%projectLocation%\target\classes"

@REM run rmi registry
start cmd.exe /k ""%rmiLocation%""

@REM Go to project folder
cd "%projectLocation%"

@REM enable running RabbitMQ if needed
REM start cmd.exe /k ""%rmqLocation%"" start

@echo "wait 5 seconds"
@ping 127.0.0.1 -n 5 -w 1000 > NUL

@REM Run java programs
%runStr%datacontroller.DataController""
%runStr%appliance.light.Light" -Dexec.args="2 localhost""
%runStr%detector.light.LightDetector" -Dexec.args="1 localhost""
%runStr%detector.motion.MotionDetector" -Dexec.args="1 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="1 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="2 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="3 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="1 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="2 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="3 localhost""
