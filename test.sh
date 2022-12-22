if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
elif [[ $(/usr/bin/id -u) -e 1]]; then
    echo "Starting script"
    # Install Hack font
    if [ -d "/usr/share/fonts/" ]; then
        unzip /tmp/Hack-v3.003-ttf.zip -d /usr/share/fonts/
        fc-cache -f -v
    else
        mkdir "/usr/share/fonts"
        unzip /tmp/Hack-v3.003-ttf.zip -d /usr/share/fonts/
        fc-cache -f -v
    fi
fi
