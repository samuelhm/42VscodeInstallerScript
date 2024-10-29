#!/bin/zsh
rm -rf /sgoinfre/students/$USER/code
rm -rf ~/Desktop/vscode.desktop
rm -rf ~/.local/share/applications/vscode.desktop
config_z=/home/$USER/.zshrc
sed -i '/code()/d' "$config_z"
source "$config_z" 
