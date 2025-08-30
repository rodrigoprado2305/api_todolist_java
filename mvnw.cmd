@ECHO OFF
SETLOCAL
SET WRAPPER_JAR=.mvn\wrapper\maven-wrapper.jar
IF NOT EXIST %WRAPPER_JAR% (
  ECHO Downloading Maven Wrapper...
  mkdir .mvn\wrapper
  powershell -Command "Invoke-WebRequest -Uri https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar -OutFile %WRAPPER_JAR%"
)
java -cp %WRAPPER_JAR% org.apache.maven.wrapper.MavenWrapperMain %*
