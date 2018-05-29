export PATH=$PATH:/home/michael/.local/bin
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Fix for WSL which wants to default to Windows user directory.
if grep -q Microsoft /proc/version; then
    cd
fi
