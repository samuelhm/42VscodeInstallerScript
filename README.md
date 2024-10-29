
# Visual Studio Code Installer and Uninstaller Scripts for 42 Linux users

This repository contains two scripts to easily install and uninstall Visual Studio Code on a Linux system. The scripts are written in `zsh` and automate the setup of Visual Studio Code on a custom path and the creation of a desktop entry for easy access.

## Scripts

### Install.sh

The `Install.sh` script downloads, extracts, and installs Visual Studio Code in a specific directory, sets up a desktop shortcut, and creates a command for launching it from the terminal.

#### What the script does:

1. Downloads the stable version of Visual Studio Code for Linux (x64) as a `.tar.gz` file from the [official Visual Studio Code download page](https://code.visualstudio.com/download).
2. Extracts the downloaded archive.
3. Moves the extracted VS Code folder to `/sgoinfre/students/$USER/code`.
4. Cleans up by removing the `.tar.gz` file.
5. Creates a `vscode.desktop` file that acts as a shortcut for launching Visual Studio Code.
6. Copies the desktop shortcut to your desktop and the local applications folder.
7. Adds a custom `code` command to your `.zshrc` file for launching VS Code from the terminal.
8. Reloads the shell configuration to apply the changes.

#### Usage:

To install Visual Studio Code, simply run the following command:

```bash
./install.sh
```

### Uninstall.sh

The `uninstall.sh` script removes Visual Studio Code, the desktop shortcut, and the custom terminal command created during the installation process.

#### What the script does:

1. Removes the Visual Studio Code directory from `/sgoinfre/students/$USER/code`.
2. Deletes the desktop shortcut from both the Desktop and the local applications folder.
3. Removes the custom `code` command from your `.zshrc`.
4. Reloads the shell configuration to apply the changes.

#### Usage:

To uninstall Visual Studio Code, simply run the following command:

```bash
./uninstall.sh
```

## Requirements

- You must have `zsh` installed as your shell.
- Internet connection to download Visual Studio Code.
- Ensure you have write permissions to the `/sgoinfre/students/$USER/` directory.

## Notes

- The script installs Visual Studio Code in the `/sgoinfre/students/$USER/code` directory. You can modify the script if you wish to change the installation path.
- The script adds a `code` function to your `.zshrc`, allowing you to run Visual Studio Code using the `code` command.
- The desktop shortcut will be available on both your Desktop and in your applications menu.

## 💬 Let's Connect
- **LinkedIn**: [Samuel Hurtado Marín](https://www.linkedin.com/in/samuel-marin-35b85342/)
- **GitHub**: [samuelhm](https://github.com/samuelhm)
