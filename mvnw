#!/bin/sh
MVNW_REPOURL="https://repo.maven.apache.org/maven2"
WRAPPER_JAR=".mvn/wrapper/maven-wrapper.jar"

if [ ! -f "$WRAPPER_JAR" ]; then
  echo "Downloading Maven Wrapper..."
  mkdir -p .mvn/wrapper
  curl -fsSL "$MVNW_REPOURL/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar" -o "$WRAPPER_JAR"
fi

exec java -cp "$WRAPPER_JAR" org.apache.maven.wrapper.MavenWrapperMain "$@"
