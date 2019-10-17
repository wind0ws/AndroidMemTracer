@echo off
@echo.
@echo Compile project, just wait a moment please...
@echo.

::call D:\Android\ndk-multiversion\android-ndk-r9c\ndk-build.cmd -B
::call D:\Android\ndk-multiversion\android-ndk-r10e\ndk-build.cmd -B
call D:\Android\ndk-multiversion\android-ndk-r12b\ndk-build.cmd -B

@echo.
@echo =============================================
@echo  Compile complete!!! Press any key to exit!
@echo =============================================
@pause>nul