@REM variables: set to correct values
@set mavenLocation=C:\Program Files\NetBeans 8.0.1\java\maven\bin\mvn.bat
@set projectLocation=C:\Users\Rik\Documents\NetBeansProjects\Netcomputing\LightSaverMaven
@set demoLocation=C:\Users\Rik\Documents\NetBeansProjects\LightSaverDemo
@set rmiLocation=C:\Program Files\Java\jdk1.8.0_31\jre\bin\rmiregistry.exe
@set rmqLocation=C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.4.4\sbin\rabbitmq-server.bat

@REM set base string for executing project files
@set runStr=start cmd.exe /k ""%mavenLocation%" exec:java -Dexec.mainClass="com.github.cc007.lightsaver.

@REM Go to project folder
cd "%projectLocation%"

@REM run rmi registry
start cmd.exe /k ""%rmiLocation%""
start cmd.exe /k ""%rmqLocation%"" start

ping 127.0.0.1 -n 5 -w 1000 > NUL

@REM Run java programs
%runStr%datacontroller.DataController""
%runStr%light.Light" -Dexec.args="1 localhost""
%runStr%detector.light.LightDetector" -Dexec.args="1 localhost""
%runStr%detector.motion.MotionDetector" -Dexec.args="1 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="1 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="2 localhost""
%runStr%detector.passage.PassageDetector" -Dexec.args="3 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="1 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="2 localhost""
%runStr%detector.door.DoorDetector" -Dexec.args="3 localhost""
