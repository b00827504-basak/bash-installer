# Bash Installer

This project is part of my Git and GitHub practice exercise.

I used Git to create a repository, make commits, work with a branch, and merge my changes into the main branch.

## About the script

The `env_install.sh` script helps set up a Python development environment on macOS or Ubuntu/Debian Linux.

It can:
- Check the operating system.
- Check if Python 3 is installed and install it if needed.
- Check the pip version and install pip if needed.
- Create a Python virtual environment.
- Install Jupyter Notebook.
- Run `brew doctor` on macOS.

## How to run the script

Open a terminal in the project folder and run:

```bash
chmod +x env_install.sh
./env_install.sh
```

The script may install software on your computer. Please read it before running it.

## How to open Jupyter Notebook

After the installation, run:

```bash
~/bash-exercise-venv/bin/jupyter notebook
```

## Check the installation

After running the script, I can check the tools with:

```bash
python3 --version
python3 -m pip --version
~/bash-exercise-venv/bin/jupyter --version
```

## Git workflow

For this exercise, I practiced these steps:

1. Create a repository and add this README.
2. Commit the README on the main branch.
3. Create a branch called `feature-install`.
4. Add `env_install.sh` and commit it.
5. Switch back to main and merge the branch.
6. Delete the feature branch.
7. Upload the project to GitHub.

## Project files

- `README.md`: information about the project.
- `env_install.sh`: the installation script.
- `REFLECTIONS.md`: my answers to the Git reflection questions.

This exercise helped me understand how to use branches, commits, and GitHub.
