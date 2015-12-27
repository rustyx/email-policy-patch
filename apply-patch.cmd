@echo off
java -Xmx512m -jar lib/${artifactId}.jar patch %*
pause
