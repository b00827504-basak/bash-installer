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

For the original local exercise, I practiced creating commits, working with a branch, and merging changes.

The files were first uploaded to this GitHub repository together, so that original local commit history is not shown here. I later repeated a small branch workflow directly on GitHub:

1. Create a branch called `feature-install` from `main`.
2. Add installation check commands to the README and commit the change.
3. Open pull request #1 and merge it into `main`.

See [pull request #1](https://github.com/b00827504-basak/bash-installer/pull/1) for the merge record. This is a new demonstration, not the original local history.

## Project files

- `README.md`: information about the project.
- `env_install.sh`: the installation script.
- `REFLECTIONS.md`: my answers to the Git reflection questions.
- `GIT_COMMANDS.md`: short notes on the Git commands and steps used in this course.

This exercise helped me understand how to use branches, commits, and GitHub.
