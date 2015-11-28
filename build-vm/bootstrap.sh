#!/bin/sh

# Update the package lists, and install some prerequisite software
apt-get -y update
apt-get -y install openjdk-7-jdk
apt-get -y install git

# Set DISPLAY variable for GUI
export DISPLAY=:0


# Keep only the relevant Unity Launcher icons in the sidebar
rm -rf /usr/share/applications/libreoffice-*.desktop
rm -rf /usr/share/applications/ubuntu-software-center.desktop
rm -rf /usr/share/applications/ubuntu-amazon-default.desktop
rm -rf /usr/share/applications/unity-control-center.desktop

## All following commands to be run as user 'vagrant' to avoid permission issues
su vagrant << 'EOF'

# Create directories needed later
mkdir ~/workspace
mkdir ~/work && cd ~/work
mkdir ~/Desktop/DRC-plugins

# Download and install Eclipse Mars for PHP
wget -nv "http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/luna/SR2/eclipse-php-luna-SR2-linux-gtk-x86_64.tar.gz&r=1" -O eclipse-php-luna-SR2-linux-gtk-x86_64.tar.gz
gunzip eclipse-php-luna-SR2-linux-gtk-x86_64.tar.gz
tar -xf eclipse-php-luna-SR2-linux-gtk-x86_64.tar
rm -rf eclipse-php-luna-SR2-linux-gtk-x86_64.tar

# Create a soft link to the Eclipse binary
sudo ln -s /home/vagrant/work/eclipse/eclipse /usr/bin/eclipse

cd ~/work

# Clone ICSE-2013-DRC repository from GitHub
git clone https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC.git
cp ICSE-2013-DRC/plugins/* ./eclipse/dropins/.
cp ICSE-2013-DRC/build-vm/vm-contents/*.txt ~/Desktop/.
cp ICSE-2013-DRC/build-vm/vm-contents/*.desktop ~/Desktop/.
chmod a+x ~/Desktop/eclipse.desktop
cp -R ICSE-2013-DRC/build-vm/vm-contents/myPHPwebsite ~/workspace/.
cp ICSE-2013-DRC/plugins/* ~/Desktop/DRC-plugins/.
cp ICSE-2013-DRC/build-vm/vm-contents/disable-lock-screen.sh ~/work/.
chmod a+x ~/work/disable-lock-screen.sh
rm -rf ICSE-2013-DRC

# Clone the GitHub project eclipse-import-projects-plugin to add a CLI option in Eclipse for importing projects
git clone https://github.com/seeq12/eclipse-import-projects-plugin.git
cp eclipse-import-projects-plugin/jar/com.seeq.eclipse.importprojects_1.3.0.jar ./eclipse/dropins/.
rm -rf eclipse-import-projects-plugin/

# Do some startup magic
mkdir ~/.config/autostart
echo '[Desktop Entry]
Type=Application
Name=Eclipse
Comment=Eclipse Integrated Development Environment
Icon=eclipse
Exec=eclipse -clean -data /home/vagrant/workspace -import /home/vagrant/workspace/myPHPwebsite
Terminal=false
Categories=Development;IDE;Java;
' >> ~/.config/autostart/eclipse.desktop

echo '[Desktop Entry]
Type=Application
Name=Disable Lock screen
Exec=/home/vagrant/work/disable-lock-screen.sh
' >> ~/.config/autostart/disable-lock-screen.desktop

EOF

reboot
