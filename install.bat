@echo.
echo %cd%
adb shell su -c "mkdir -p /data/local/memtracer/"
adb shell su -c "chmod 755 /data/local/memtracer/"
adb shell su -c "mkdir -p /sdcard/tmp/memtracer/"
::Why here we mkdir on sdcard again? because some device use "adb shell su -c" mkdir on sdcard has no effect!
adb shell "mkdir -p /sdcard/tmp/memtracer/"
adb shell su -c "chmod 777 /sdcard/tmp/memtracer/"
adb push "libs\armeabi-v7a\memtrace" "/data/local/memtracer/"
adb push "libs\armeabi-v7a\libmemtracer.so" "/data/local/memtracer/"
adb shell su -c "chmod 777 /data/local/memtracer/*"
@echo.
@echo =========================================
@echo Install complete. Press any key to exit!
@echo =========================================
@echo.
@pause>nul