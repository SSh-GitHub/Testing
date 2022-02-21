@echo off
rem cls
setlocal ENABLEDELAYEDEXPANSION

rem !!! IMPORTANT: Set proper pathes there
set VERSION_HOME=D:\user\miti\dev\trunk\
rem set VERSION_HOME=D:\user\miti\10.x\10.0.1\
rem set VERSION_HOME=D:\user\miti\10.x\10.0.0\
rem set VERSION_HOME=D:\user\miti\9.x\9.0.1\
set MIMB_HOME=%VERSION_HOME%\Build\_Install
set JAVA_HOME="%VERSION_HOME%\External\jdk\jdk-1.8.0-x64\bin"
set PROFILES="%VERSION_HOME%\MIMB\sdk\Profiles\profiles"

rem !!! IMPORTANT: The jars should be in place
set CLASSPATH=%MIMB_HOME%\java\MIRLineage.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRLineageImpl.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRExpressionLib.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRStitchingUtil.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRRepository.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRRepositoryViewImpl.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRRepositoryView.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRProfiler.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRModelBridge.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRUtil.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIR.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRSummaryToCsv.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRBridgeConstants.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MMCore.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\Mimb.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\Licensing.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRModelConverter.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRSearch.jar
set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRSearchImpl.jar
rem set CLASSPATH=%CLASSPATH%;%MIMB_HOME%\java\MIRModelComparator.jar


set SRC_MODELS=%cd%\SrcModels
set GOLD_MODELS=%cd%\GoldModels
set DATE_TIME_STAMP=%date:~-4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
set DATE_TIME_STAMP=%DATE_TIME_STAMP: =-%
set DST_MODELS=%cd%\%DATE_TIME_STAMP%

MD %DST_MODELS%

IF NOT EXIST %SRC_MODELS%  MD %SRC_MODELS%
IF NOT EXIST %GOLD_MODELS% MD %GOLD_MODELS%

IF EXIST Log.txt                       DEL Log.txt
IF EXIST 0_0_Commands.txt              DEL 0_0_Commands.txt
IF EXIST 1_1_ImportOutput.log          DEL 1_1_ImportOutput.log
IF EXIST 1_2_ImportError.log           DEL 1_2_ImportError.log
IF EXIST 2_1_SummaryToCsvOutput.log    DEL 2_1_SummaryToCsvOutput.log
IF EXIST 2_2_SummaryToCsvError.log     DEL 2_2_SummaryToCsvError.log
IF EXIST 3_1_FileCompareOutput.log     DEL 3_1_FileCompareOutput.log
IF EXIST 3_2_FileCompareError.log      DEL 3_2_FileCompareError.log
IF EXIST 4_1_ModelComparatorOutput.log DEL 4_1_ModelComparatorOutput.log
IF EXIST 4_2_ModelComparatorError.log  DEL 4_2_ModelComparatorError.log


IF EXIST %MIMB_HOME%\java\MIRLineage.jar            ( echo EXIST:%MIMB_HOME%\java\MIRLineage.jar            >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRLineage.jar - !!!            >>Log.txt) 
IF EXIST %MIMB_HOME%\java\MIRLineageImpl.jar        ( echo EXIST:%MIMB_HOME%\java\MIRLineageImpl.jar        >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRLineageImpl.jar - !!!        >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRExpressionLib.jar      ( echo EXIST:%MIMB_HOME%\java\MIRExpressionLib.jar      >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRExpressionLib.jar - !!!      >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRStitchingUtil.jar      ( echo EXIST:%MIMB_HOME%\java\MIRStitchingUtil.jar      >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRStitchingUtil.jar - !!!      >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRRepository.jar         ( echo EXIST:%MIMB_HOME%\java\MIRRepository.jar         >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRRepository.jar - !!!         >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRRepositoryViewImpl.jar ( echo EXIST:%MIMB_HOME%\java\MIRRepositoryViewImpl.jar >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRRepositoryViewImpl.jar - !!! >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRRepositoryView.jar     ( echo EXIST:%MIMB_HOME%\java\MIRRepositoryView.jar     >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRRepositoryView.jar - !!!     >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRProfiler.jar           ( echo EXIST:%MIMB_HOME%\java\MIRProfiler.jar           >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRProfiler.jar - !!!           >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRModelBridge.jar        ( echo EXIST:%MIMB_HOME%\java\MIRModelBridge.jar        >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRModelBridge.jar - !!!        >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRUtil.jar               ( echo EXIST:%MIMB_HOME%\java\MIRUtil.jar               >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRUtil.jar - !!!               >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIR.jar                   ( echo EXIST:%MIMB_HOME%\java\MIR.jar                   >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIR.jar - !!!                   >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRSummaryToCsv.jar       ( echo EXIST:%MIMB_HOME%\java\MIRSummaryToCsv.jar       >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRSummaryToCsv.jar - !!!       >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRBridgeConstants.jar    ( echo EXIST:%MIMB_HOME%\java\MIRBridgeConstants.jar    >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRBridgeConstants.jar - !!!    >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRSearch.jar             ( echo EXIST:%MIMB_HOME%\java\MIRSearch.jar             >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRSearch.jar - !!!             >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRSearchImpl.jar         ( echo EXIST:%MIMB_HOME%\java\MIRSearchImpl.jar         >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRSearchImpl.jar - !!!         >>Log.txt)
IF EXIST %MIMB_HOME%\java\MIRModelComparator.jar    ( echo EXIST:%MIMB_HOME%\java\MIRModelComparator.jar    >>Log.txt ) ELSE ( echo !!! - NOTEXIST:%MIMB_HOME%\java\MIRModelComparator.jar - !!!    >>Log.txt)

 
FOR /f %%d IN ('dir /b %SRC_MODELS%') DO (
    FOR /f "delims=|" %%f IN ('dir /b %SRC_MODELS%\%%d') DO (
        MD "%DST_MODELS%\%%d\%%f"
        MD "%DST_MODELS%\%%d\%%f\xmi"

        echo|set /p=%DATE_TIME_STAMP%\%%d\%%f...
        echo|set /p=%DATE_TIME_STAMP%\%%d\%%f...>>Log.txt

        IF /I [%%~xf] == [.xml] (
            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\Commands.txt"
            echo ------------------------------------------------------         >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log" 2>>"%DST_MODELS%\%%d\%%f\1_2_ImportError.log"
        ) ELSE IF /I [%%~xf] == [.dsx] (
            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\Commands.txt"
            echo ------------------------------------------------------         >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log" 2>>"%DST_MODELS%\%%d\%%f\1_2_ImportError.log"
        ) ELSE IF /I [%%~xf] == [.dtsx] (
            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\Commands.txt"
            echo ------------------------------------------------------         >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log" 2>>"%DST_MODELS%\%%d\%%f\1_2_ImportError.log"
        ) ELSE IF /I [%%~xf] == [.xlsx] (
            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\OutputCommands.txt"
            echo ------------------------------------------------------         >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -i %%d -f "%SRC_MODELS%\%%d\%%f" -e MetaIntegrationMultiModelXml -t "%DST_MODELS%\%%d\%%f\xmi" >> "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log" 2>>"%DST_MODELS%\%%d\%%f\1_2_ImportError.log"
        ) ELSE IF /I [%%~xf] == [.req] (
                    echo ^<?xml version='1.0' encoding='UTF-8'?^>                                                  >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo ^<RunMimbRequest                                                                          >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo   userIdentity="0-0-0-0-0-0-0-1_127.0.0.1local"                                           >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo   validationLevel="BASIC"                                                                 >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo   ns2="http://metaintegration.com/MIMB/Integration/5"                                     >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo   type="ns2:RunMimbType"^>                                                                >> %DST_MODELS%\%%d\%%f\Request.xml

                    type "%SRC_MODELS%\%%d\%%f"                                                                    >> %DST_MODELS%\%%d\%%f\Request.xml

                    echo   ^<Export                                                                                >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo     bridgeDisplayName="MIMB Intermediate Step"                                            >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo     bridgeIdentifier="MetaIntegrationMultiModelXml"                                       >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo     disableLog="false"^>                                                                  >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo     ^<BridgeParameter                                                                     >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo       bridgeParameterIdentifier="Directory"^>%DST_MODELS%\%%d\%%f\xmi^</BridgeParameter^> >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo   ^</Export^>                                                                             >> %DST_MODELS%\%%d\%%f\Request.xml
                    echo ^</RunMimbRequest^>                                                                       >> %DST_MODELS%\%%d\%%f\Request.xml


            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -r "%DST_MODELS%\%%d\%%f\Request.xml" >> "%DST_MODELS%\%%d\%%f\Commands.txt"
            echo ------------------------------------------------------         >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.mimb.executable.MimbExecutable -r "%DST_MODELS%\%%d\%%f\Request.xml" >> "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log" 2>>"%DST_MODELS%\%%d\%%f\1_2_ImportError.log"
        )

        IF EXIST %DST_MODELS%\%%d\%%f\xmi\main.xml (
            echo|set /p=xmi\main.xml - presents...
            echo|set /p=xmi\main.xml - presents...>>Log.txt
        ) ELSE (
            echo    xmi\main.xml - !!! NOT FOUND
            echo    xmi\main.xml - !!! NOT FOUND...>>Log.txt
        )


        IF EXIST %DST_MODELS%\%%d\%%f\xmi\main.xml (
            findstr /C:"FATAL" /C:"The tool failed with error code" "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log">> "%DST_MODELS%\%%d\%%f\Errors.log"
            findstr /C:"FATAL" /C:"The tool failed with error code" "%DST_MODELS%\%%d\%%f\1_2_ImportError.log" >> "%DST_MODELS%\%%d\%%f\Errors.log"
    

            echo %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.summary.csv.SummaryToCsv -R "%DST_MODELS%\%%d\%%f\xmi"  -C "%DST_MODELS%\%%d\%%f\Summary.csv" -S .* -D Lineage -O Y -p %PROFILES%>> "%DST_MODELS%\%%d\%%f\Commands.txt"
            echo ------------------------------------------------------                                                                                                                               >> "%DST_MODELS%\%%d\%%f\Commands.txt"
                 %JAVA_HOME%\java -Dmimb.home=%MIMB_HOME% -classpath %CLASSPATH% MITI.summary.csv.SummaryToCsv -R "%DST_MODELS%\%%d\%%f\xmi"  -C "%DST_MODELS%\%%d\%%f\Summary.csv" -S .* -D Lineage -O Y -p %PROFILES%>> "%DST_MODELS%\%%d\%%f\2_1_SummaryToCsvOutput.log" 2>>"%DST_MODELS%\%%d\%%f\2_2_SummaryToCsvError.log"

            IF EXIST %DST_MODELS%\%%d\%%f\Summary.csv (
                echo    Summary - presents
                echo    Summary - presents>>Log.txt
            ) ELSE (
                echo    Summary - !!! NOT FOUND
                echo    Summary - !!! NOT FOUND>>Log.txt
            )

            echo.                                                                        >>0_0_Commands.txt
            echo ------------------------------------------------------------------------>>0_0_Commands.txt
            echo %DATE_TIME_STAMP%\%%d\%%f                                               >>0_0_Commands.txt
            echo ------------------------------------------------------------------------>>0_0_Commands.txt
            echo.                                                                        >>1_1_ImportOutput.log
            echo ------------------------------------------------------------------------>>1_1_ImportOutput.log
            echo %DATE_TIME_STAMP%\%%d\%%f                                               >>1_1_ImportOutput.log
            echo ------------------------------------------------------------------------>>1_1_ImportOutput.log
            echo.                                                                        >>1_2_ImportError.log
            echo ------------------------------------------------------------------------>>1_2_ImportError.log
            echo %DATE_TIME_STAMP%\%%d\%%f                                               >>1_2_ImportError.log
            echo ------------------------------------------------------------------------>>1_2_ImportError.log
            echo.                                                                        >>2_1_SummaryToCsvOutput.log
            echo ------------------------------------------------------------------------>>2_1_SummaryToCsvOutput.log
            echo %DATE_TIME_STAMP%\%%d\%%f                                               >>2_1_SummaryToCsvOutput.log
            echo ------------------------------------------------------------------------>>2_1_SummaryToCsvOutput.log
            echo.                                                                        >>2_2_SummaryToCsvError.log
            echo ------------------------------------------------------------------------>>2_2_SummaryToCsvError.log
            echo %DATE_TIME_STAMP%\%%d\%%f                                               >>2_2_SummaryToCsvError.log
            echo ------------------------------------------------------------------------>>2_2_SummaryToCsvError.log

            type "%DST_MODELS%\%%d\%%f\Commands.txt"                  >> 0_0_Commands.txt
            type "%DST_MODELS%\%%d\%%f\1_1_ImportOutput.log"          >> 1_1_ImportOutput.log
            type "%DST_MODELS%\%%d\%%f\1_2_ImportError.log"           >> 1_2_ImportError.log
            type "%DST_MODELS%\%%d\%%f\2_1_SummaryToCsvOutput.log"    >> 2_1_SummaryToCsvOutput.log
            type "%DST_MODELS%\%%d\%%f\2_2_SummaryToCsvError.log"     >> 2_2_SummaryToCsvError.log
        )
    )
)

echo.> 3_1_FileCompareOutput.log
echo.> 3_2_FileCompareError.log
set TestDir=%DATE_TIME_STAMP%
set GoldDir=GoldModels
echo TestDir: %TestDir% >> 3_1_FileCompareOutput.log
echo GoldDir: %GoldDir% >> 3_1_FileCompareOutput.log
FOR /R %TestDir% %%F IN (*.csv) DO (
    set TestFile=%%F
    set TestFile=!TestFile:%cd%=.!
    set GoldFile=!TestFile:%TestDir%=%GoldDir%!
    echo fc /N /T "!TestFile!" "!GoldFile!" >> 0_0_Commands.txt
    echo fc /N /T "!TestFile!" "!GoldFile!" >> 3_1_FileCompareOutput.log
         fc /N /T "!TestFile!" "!GoldFile!" >> 3_1_FileCompareOutput.log 2>>&1 
    echo ERRORLEVEL=!ERRORLEVEL! >> 3_1_FileCompareOutput.log
    IF NOT !ERRORLEVEL! == 0 (
       echo fc /N /T !TestFile! !GoldFile! >> 3_2_FileCompareError.log
       echo ERRORLEVEL=!ERRORLEVEL!        >> 3_2_FileCompareError.log
    )
)

findstr /C:"_F" 2_1_SummaryToCsvOutput.log 
findstr /C:"_F" 2_1_SummaryToCsvOutput.log    >>Log.txt
findstr /C:"FC:" 3_2_FileCompareError.log
findstr /C:"FC:" 3_2_FileCompareError.log     >>Log.txt
findstr /C:"!!!" 4_2_ModelComparatorError.log
findstr /C:"!!!" 4_2_ModelComparatorError.log >>Log.txt
findstr /C:"*****" 3_1_FileCompareOutput.log 
findstr /C:"*****" 3_1_FileCompareOutput.log  >>Log.txt

@copy Log.txt                       %DST_MODELS%\Log.txt                    >>Log.txt
@copy 0_0_Commands.txt              %DST_MODELS%\0_0_Commands.txt           >>Log.txt
@copy 1_1_ImportOutput.log          %DST_MODELS%\1_1_ImportOutput.log       >>Log.txt
@copy 1_2_ImportError.log           %DST_MODELS%\1_2_ImportError.log        >>Log.txt
@copy 2_1_SummaryToCsvOutput.log    %DST_MODELS%\2_1_SummaryToCsvOutput.log >>Log.txt
@copy 2_2_SummaryToCsvError.log     %DST_MODELS%\2_2_SummaryToCsvError.log  >>Log.txt
@copy 3_1_FileCompareOutput.log     %DST_MODELS%\3_1_FileCompareOutput.log  >>Log.txt
@copy 3_2_FileCompareError.log      %DST_MODELS%\3_2_FileCompareError.log   >>Log.txt

rem pause