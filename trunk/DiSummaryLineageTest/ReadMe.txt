Install:
1.Get DiSummaryLineageTest.bat
2.Create directory and place the batch in.
3.Open the DiSummaryLineageTest.bat and set proper patches:
    - MIMB_HOME - like: <YourLocation>\trunk\Build\_Install
    - JAVA_HOME - like: <YourLocation>\trunk\External\jdk\jdk-1.6.0-x64\bin
4.Run the DiSummaryLineageTest.bat. Such as there are not files for importing the batch just creates needed directories: "SrcModels" and "GoldModels"
5.Create subfolder in "SrcModels" to place source files in. The name of this subfolder should be ID of corresponding bridge.
    Example:
    - For DataStage bridge you should have: "SrcModels\AscentialDataStage"
    - For ODI bridge you should have: "SrcModels\OracleDataIntegrator"
6.Copy source files into corresponding directory if you intend to test file bridge. 
  To test repository bridge you should obtain request file. 
  IMPORTANT: The file bridge source files should have extension: "XML", the repository bridge request file should have extension "REQ". 
             Any others files are ignored.
7.Run DiSummaryLineageTest.bat. If previous steps was taken properly you should see testing progress and list of errors. At this step you
  should have at least one error message of gold models not found 

  The batch create new subdirectory for each run. It's name is time step. Like: "2014-10-06-19-35-52".
  This subdirectory contains subdirectories for each tested bridge. In there are "CSV" files which contains exported ultimate summary model.
  As well there are subdirectories for each tested source file with corresponding logs.

  The overview of directories:
  <YourTestDir> - the working directory. The OneClickTest.bat should be in.
    DiSummaryLineageTest.bat - the batch file

    <SrcModels> - the directory contains subfolders for each tested bridge
      <BridgeId_1> - the directory contains source models files for "BridgeId_1"
        <SourceModelFile_1> - the source model file. Should has extension {"XML"|"REQ"}
        <SourceModelFile_2> - the source model file. Should has extension {"XML"|"REQ"}

    <GoldModels> - the directory contains subfolders for each tested bridge
      <BridgeId_1> - the directory contains gold summary CSV files for "BridgeId_1"
        <GoldCsvPath_1> - path to the gold summary CSV. 
        <GoldCsvPath_2> - path to the gold summary CSV. 

    <TimeStampDir> - the directory is created for each run of test. It contains raw results of testing.
      <BridgeId_1> - the directory contains results of testing models of "BridgeId_1"
        <SourceModelPath_1>.CSV - the directory contains exported summary models. It would be compared with corresponding gold CSV path.
        <SourceModelFile_1> - the directory contains results of testing file "SourceModelFile_1" of "BridgeId_1"
          <xmi> - the exported MIR XMI multimodel content
          0_0_Commands.txt  - the list of commands which was performed on testing. It is useful to execute to make clear on something going wrong.
          1_1_ImportOutput.log  - the log of output of importing step
          1_2_ImportError.log  - the log of error output of importing step
          2_1_SummaryToCsvOutput.log - the log of export summary to CSV file
          2_2_SummaryToCsvError.log - the log of errors of export summary to CSV file
          3_1_FileCompareOutput.log - the log of compare gold csv and current exported csv
          3_2_FileCompareError.log - the log of errors of compare gold csv and current exported csv
          Errors.log - the log of errors.

8. Create corresponding directories in "GoldModels" and copy "CSV" files in.
9. Run the DiSummaryLineageTest.bat again and make sure the 3_2_FileCompareError.log and is empty.
   If there are some non zero ERRORLEVEL reords look in 3_1_FileCompareOutput.log to 
   figure out what is going wrong.