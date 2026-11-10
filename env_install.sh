#!/usr/bin/env bash

# Print a message with empty lines.
pretty_print() {
    printf '\n%s\n\n' "$1"
}

# Check the operating system.
case "$OSTYPE" in
    linux*) OS="linux" ;;
    darwin*) OS="macos" ;;
    *) pretty_print "This system is not supported."; exit 1 ;;
esac

pretty_print "Operating system: $OS"

# Check the package manager.
if [ "$OS" = "macos" ] && ! command -v brew >/dev/null 2>&1; then
    pretty_print "Please install Homebrew first: https://brew.sh"
    exit 1
fi

if [ "$OS" = "linux" ] && ! command -v apt-get >/dev/null 2>&1; then
    pretty_print "This script needs Ubuntu or Debian Linux."
    exit 1
fi

# Install Python 3 if it is missing.
if command -v python3 >/dev/null 2>&1; then
    pretty_print "Python is installed: $(python3 --version)"
else
    pretty_print "Installing Python 3..."
    if [ "$OS" = "macos" ]; then
        brew install python || exit 1
    else
        sudo apt-get update || exit 1
        sudo apt-get install -y python3 python3-pip python3-venv || exit 1
    fi
    pretty_print "Python is installed: $(python3 --version)"
fi

# Check pip and install it if needed.
if python3 -m pip --version >/dev/null 2>&1; then
    pretty_print "pip is installed: $(python3 -m pip --version)"
else
    pretty_print "Installing pip..."
    if [ "$OS" = "macos" ]; then
        brew install python || exit 1
    else
        sudo apt-get update || exit 1
        sudo apt-get install -y python3-pip || exit 1
    fi
    python3 -m pip --version || exit 1
fi

# Create a virtual environment for Jupyter.
# This keeps Jupyter packages separate from system Python.
VENV_DIR="$HOME/bash-exercise-venv"
if ! python3 -m venv "$VENV_DIR"; then
    if [ "$OS" = "linux" ]; then
        pretty_print "Installing Python virtual environment support..."
        sudo apt-get update || exit 1
        sudo apt-get install -y python3-venv || exit 1
        python3 -m venv "$VENV_DIR" || exit 1
    else
        pretty_print "Could not create the virtual environment."
        exit 1
    fi
fi

# Install Jupyter Notebook.
pretty_print "Installing Jupyter Notebook..."
"$VENV_DIR/bin/python" -m pip install notebook || exit 1
pretty_print "Jupyter Notebook is ready."

# Check Homebrew on macOS.
if [ "$OS" = "macos" ]; then
    pretty_print "Checking Homebrew..."
    brew doctor
fi

pretty_print "Done! Start Jupyter with: $VENV_DIR/bin/jupyter notebook"
