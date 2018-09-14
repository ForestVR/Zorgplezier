#! /bin/sh

echo 'Downloading from 
https://download.unity3d.com/download_unity/3071d1717b71/MacEditorInstaller/Unity-2018.2.5f1.pkg
'
curl -o Unity.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorInstaller/Unity-2018.2.5f1.pkg

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /

curl -o Unity-Mac-Support.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Mac-Support-for-Editor-2018.2.5f1.pkg 

echo 'Installing Unity-Mac-Support.pkg'
sudo installer -dumplog -package Unity-Mac-Support.pkg 


curl -o Unity-Win-Support.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-2018.2.5f1.pkg

echo 'Installing Unity-Win-Support.pkg'
sudo installer -dumplog -package Unity-Win-Support.pkg

curl -o Unity-Linux-Support.pkg https://download.unity3d.com/download_unity/3071d1717b71/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.5f1.pkg

echo 'Installing Unity-Linux-Support.pkg'
sudo installer -dumplog -package Unity-Linux-Support.pkg


echo 'Install.sh ran successfully'
