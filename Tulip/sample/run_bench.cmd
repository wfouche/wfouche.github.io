REM jbang io.github.wfouche.tulip:tulip-runtime:2.1.3 Kotlin
if exist benchmark_report.html del benchmark_report.html
set JBANG_JAVA_OPTIONS=-server -Xms2g -Xmx2g -XX:+UseZGC -XX:+ZGenerational
call jbang run App.kt
@echo off
echo.
REM call w3m.exe -dump -cols 205 benchmark_report.html
REM lynx.exe -dump -width 205 benchmark_report.html
start benchmark_report.html
REM jbang run https://gist.github.com/wfouche/70738de122128bbc19ea888799151699 benchmark_config.adoc
REM start benchmark_config.html
