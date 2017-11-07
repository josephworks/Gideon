echo "Still in beta..."
echo starting...
sudo su
# Script from ServerBuilder (github.com/josephworks/serverbuilder)
#-----------------------------------------------
echo installing dependencies
# main work
sudo apt update
sudo apt install toilet
# Gideon depends
echo installing dependencies (python)...
sudo apt install wget git curl unzip python-pip python-dev build-essential -y
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
echo installing dependencies (webserver)...
apt install apache2 apache2-doc apache2-utils -y
cd /var/www
wget https://raw.githubusercontent.com/josephworks/Gideon/master/gideon.html
servise appache restart
pip3 install pyvmomi
#-----------------------------------------------
