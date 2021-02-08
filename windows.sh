#!/bin/bash

# If this is not the first run
if [ ! $# -lt 1 ]; then
    echo "Setting up"

    # Set grub default to saved
    echo "Changing grub default"
    sudo sed -i -e 's/GRUB_DEFAULT=[[:digit:]]/GRUB_DEFAULT=saved/g' /etc/default/grub
    sudo update-grub

    # Create an alias
    echo "Creating an alias"
    echo 'alias windows="chmod +x windows.sh ; ~/windows.sh"' >> ~/.bash_aliases

fi

# Change grub's reboot option
sudo grub-reboot "$(grep -i windows /boot/grub/grub.cfg | cut -d"'" -f2)"

# Reboot
sudo reboot
