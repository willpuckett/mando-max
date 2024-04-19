USER={your_username}
# Get wifi
sudo nmtui

sudo apt update && sudo apt upgrade
# git rid of gui packages
# ** using purge and autopurge instead of remove clears like an extra 2 gigs of space!!!
sudo apt purge rknpu2-rk356x chromium-x11 codium firefox-esr xfconf 'xfce4-*' xfwm4 xfdesktop4 exo-utils thunar 'x11-*' samba rockchip-chromium-x11-utils 'samba-*'
sudo apt autopurge
sudo mkdir -p /usr/share/sddm/themes/breeze && \
sudo touch /usr/share/sddm/themes/breeze/Main.qml
sudo apt autopurge



# install gh source
sudo mkdir -p -m 755 /etc/apt/keyrings && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

sudo apt update && sudo apt upgrade
sudo reboot

# fix wifi
sudo ln -s /usr/src/aic8800-3.0+git20231212.15dcf017-1/SDIO/driver_fw/fw/aic8800D80 /lib/firmware/aic8800D80

# Make your user
sudo adduser  --shell /bin/bash 
sudo adduser $USER sudo
sudo echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

# Setup CAN
echo -e 'allow-hotplug can0
iface can0 can static
    bitrate 1000000
    up ip link set $IFACE txqueuelen 128' | sudo tee /etc/network/interfaces.d/can0
# navigate below to turn on the host overlay for usb can
sudo rsetup
exit


# log back in as $USER...then...
sudo userdel -r radxa
sudo userdel -r rock


# Starship
curl -sS https://starship.rs/install.sh | sh && \
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# clone stuff
curl -fsSL https://deno.land/install.sh | sh && \
echo -e 'export DENO_INSTALL="/home/$USER/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.bashrc && \
git clone https://github.com/dw-0/kiauh && \
git clone https://github.com/arksine/katapult && \
git clone https://github.com/willpuckett/katchup && \
kiauh/kiauh.sh

# Setup Resonance Measurement
sudo apt update && sudo apt install micro speedtest-cli gh python3-numpy python3-matplotlib libatlas-base-dev libopenblas-dev && \
~/klippy-env/bin/pip install -v numpy

gh auth login
git config --global user.name $USER && \
git config --global user.email {youremail}

cd ~/printer_data && \
rm -rf config && \
gh repo clone willpuckett/grogu && \
cd -

deno run --allow-read --allow-env npm:figlet-cli -f Slant $(echo $HOSTNAME) | sudo tee /etc/motd