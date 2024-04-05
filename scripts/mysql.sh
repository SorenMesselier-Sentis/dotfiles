echo "Install mysql ..."
brew install mysql

echo "Restarting mysql"
brew services restart mysql

echo "Launch secure installation"
mysql_secure_installation
