#!/bin/sh
# A script to install tgmeetup

# Check ~/.config (if no create dir)
# Ceate TGmeetup dir under ~/.config
config_path=~/.config
tgmeetup_path=~/.config/TGmeetup
if [ ! -e $config_path ] ; then
    mkdir ~/.config
    mkdir ~/.config/TGmeetup
elif [ ! -e $tgmeetup_path_path ] ; then
    mkdir ~/.config/TGmeetup
fi

# cp API.cfg under ~/.config/TGmeetup
API_file=API.cfg
if [ ! -e $API_file ] ; then
    echo "Please run 'cp API.cfg.sample API.cfg' and modify the file API.cfg."
else
    cp ./API.cfg ~/.config/TGmeetup
fi

# cp community & cnference to ~/.config/TGmeetup
cp -r community ~/.config/TGmeetup
cp -r conference ~/.config/TGmeetup

# Install tgmeetup
sudo python setup.py install