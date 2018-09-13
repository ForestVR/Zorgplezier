#! /bin/sh

# Example install script for Unity3D project. See the entire example: 


# This link changes from time to time. I haven't found a reliable hosted 
 
from: http://unity3d.com/get-unity/download/archive
echo 'Downloading from 
http://netstorage.unity3d.com/unity/3757309da7e7/MacEditorInstaller/Unity-5.2.2f1.pkg: 
'
curl -o Unity.pkg 
http://netstorage.unity3d.com/unity/3757309da7e7/MacEditorInstaller/Unity-5.2.2f1.pkg

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /
