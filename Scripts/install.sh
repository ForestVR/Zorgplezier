#! /bin/sh

echo 'Downloading from 
https://download.unity3d.com/download_unity/3071d1717b71/MacEditorInstaller/Unity-2018.2.5f1.pkg
'
curl -o Unity.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorInstaller/Unity-2018.2.5f1.pkg

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /

curl -o UnityMacSupport.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Mac-Support-for-Editor-2018.2.5f1.pkg 

echo 'Installing Unity-Mac-Support.pkg'
sudo installer -dumplog -package UnityMacSupport.pkg -target /


curl -o UnityWinSupport.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-2018.2.5f1.pkg

echo 'Installing Unity-Win-Support.pkg'
sudo installer -dumplog -package UnityWinSupport.pkg -target /

curl -o UnityLinuxSupport.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.5f1.pkg

echo 'Installing Unity-Linux-Support.pkg'
sudo installer -dumplog -package UnityLinuxSupport.pkg -target /


echo 'Install.sh ran successfully'
