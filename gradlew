#!/usr/bin/env sh

APP_BASE_NAME=$(basename "$0")

# Add default JVM options here. You can also use $JAVA_OPTS and $GRADLE_OPTS.
DEFAULT_JVM_OPTS='-Xmx64m -Xms64m'

CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

if [ ! -f "$CLASSPATH" ]; then
  echo "Gradle wrapper JAR not found. Please run 'gradle wrapper' or download the wrapper jar." >&2
  exit 1
fi

exec java "$DEFAULT_JVM_OPTS" "$JAVA_OPTS" "$GRADLE_OPTS" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
