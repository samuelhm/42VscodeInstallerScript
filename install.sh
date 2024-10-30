#!/bin/zsh
wget --output-document=code.tar.gz https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-x64
tar -xvf code.tar.gz
mv VSCode-linux-x64 /sgoinfre/students/$USER/code
rm code.tar.gz
echo '#!/usr/bin/env xdg-open' >> vscode.desktop
echo "[Desktop Entry]" >> vscode.desktop
echo "Name=Visual Studio Code" >> vscode.desktop
echo "Comment=Code Editing. Redefined." >> vscode.desktop
echo "Exec=/sgoinfre/students/$USER/code/code --no-sandbox %F" >> vscode.desktop
echo "Icon=/sgoinfre/students/$USER/code/resources/app/resources/linux/code.png" >> vscode.desktop
echo "Type=Application" >> vscode.desktop
echo "Terminal=false" >> vscode.desktop
echo "Categories=Development;IDE;" >> vscode.desktop
echo "StartupWMClass=Code" >> vscode.desktop
chmod +x vscode.desktop
cp vscode.desktop ~/Desktop/
cp vscode.desktop ~/.local/share/applications
rm vscode.desktop
echo "code() {nohup /sgoinfre/students/$USER/code/code "'$@'" > /dev/null 2>&1 &}" >> ~/.zshrc
source ~/.zshrc
