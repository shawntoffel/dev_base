echo 'checking for .ssh directory'
mkdir -p ~/.ssh

echo 'copying keys'
cp /vagrant/ssh/* ~/.ssh/

echo 'setting permissions'
chmod 600 ~/.ssh/*

echo 'done copying keys!'
