export PATH=$PATH:/home/michael/.local/bin
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Fix for WSL which wants to default to Windows user directory.
if [ -e /proc/version ]; then
    if grep -q Microsoft /proc/version; then
        cd
    fi
fi

export TERM=xterm-256color
