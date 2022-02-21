@echo off
rem Directory path to MIMB.BAT
set MIMB_BIN=D:\user\miti\dev\trunk\Build\_Install\bin\


rem Import Open IGC export bridge parameters
set IGC_URL=https://ec2-18-232-127-188.compute-1.amazonaws.com:9443/ibm/iis/igc-rest/v1/metadata
set IGC_USER=isadmin
set IGC_PASSWORD=NebulaM20
set IGC_INSTALL_DIR=C:\\IBM\\InformationServer

echo ==============================================================
echo SSh_Dev_Test_DI_01
echo ==============================================================
SET IMPORT=-i InformaticaDeveloperImport.InformaticaBigDataManagement
SET IMPORT=%IMPORT% -o "File=D:\user\Testing\IbmOpenIGC\MIMB-17325\M_DLY_BTCH_FXSPT_DL_DTL_SF_CP_1.xml"
SET IMPORT=%IMPORT% -o "Import UDPs=As metadata"
SET IMPORT=%IMPORT% -o "Import relationship name=From relationship name"
SET IMPORT=%IMPORT% -o "Import column order from=Physical order"
SET IMPORT=%IMPORT% -o "Import owner schemas=True"
SET IMPORT=%IMPORT% -o "Import diagrams=Current view"
SET IMPORT=%IMPORT% -o "Move entities to subject areas=False"
SET EXPORT=-e IbmOpenIGC
SET EXPORT=%EXPORT% -p "URL=%IGC_URL%"
SET EXPORT=%EXPORT% -p "User=%IGC_USER%"
SET EXPORT=%EXPORT% -p "Password=%IGC_PASSWORD%"
SET EXPORT=%EXPORT% -p "IBM InfoSphere Information Server installation directory=%IGC_INSTALL_DIR%"
SET EXPORT=%EXPORT% -p "Mapping system name=SSh_Dev_Test_DI_01: D:\user\Testing\IbmOpenIGC\MIMB-17325\M_DLY_BTCH_FXSPT_DL_DTL_SF_CP_1.xml"
SET EXPORT=%EXPORT% -p "Host system name="
SET EXPORT=%EXPORT% -p "Database name="
SET EXPORT=%EXPORT% -p "Schema name="
SET EXPORT=%EXPORT% -p "Connections="
SET EXPORT=%EXPORT% -p "Miscellaneous=-backup D:\user\Testing\IbmOpenIGC\SSh_Dev_Test\-backup\"
echo %MIMB_BIN%\MIMB.BAT %IMPORT% %EXPORT%
call %MIMB_BIN%\MIMB.BAT %IMPORT% %EXPORT%

pause.