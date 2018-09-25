#! /bin/sh

# NOTE the command args below make the assumption that your Unity 
#  a subdirectory of the repo root directory, e.g. for this repo 
project="Zorgplezier"
UNITYCI_PROJECT_NAME='Zorgplezier'
#  the project folder is "UnityProject". If this is not true then adjust 
#  -projectPath argument to point to the right location.
## Make Directories for Build
mkdir "$(pwd)/osx"
mkdir "$(pwd)/windows"

cd "$(pwd)"
cd "$(pwd)/osx"
pwd
cd "$(pwd)"
cd "$(pwd)/windows"
pwd
cd "$(pwd)"
## Run the editor unit tests
echo "Running editor unit tests for ${UNITYCI_PROJECT_NAME}"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectPath "$(pwd)/${UNITYCI_PROJECT_NAME}" \
	-runEditorTests \
	-editorTestsResultFile $(pwd)/test.xml \
	-quit

echo "Unit test logs"
cat $(pwd)/test.xml
# exit if tests failed
# if [ $rc0 -ne 0 ]; then { echo "Failed unit tests"; exit $rc0; } fi

## Make the builds
# Recall from install.sh that a separate module was needed for Windows 
# build support
echo "Attempting build of ${UNITYCI_PROJECT_NAME} for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectPath "$(pwd)/${UNITYCI_PROJECT_NAME}" \
	-buildWindowsPlayer \
"$(pwd)/Build/windows/${UNITYCI_PROJECT_NAME}.exe" \
	-quit

echo "Build logs (Windows)"
cat $(pwd)/unity.log

echo "Attempting build of ${UNITYCI_PROJECT_NAME} for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectPath "$(pwd)/${UNITYCI_PROJECT_NAME}" \
	-buildOSXUniversalPlayer \
"$(pwd)/Build/osx/${UNITYCI_PROJECT_NAME}.app" \
	-quit

echo "Build logs (OSX)"
cat $(pwd)/unity.log

