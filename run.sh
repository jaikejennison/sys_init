#! /bin/bash

echo '
███████╗██╗   ██╗███████╗        ██╗███╗   ██╗██╗████████╗
██╔════╝╚██╗ ██╔╝██╔════╝        ██║████╗  ██║██║╚══██╔══╝
███████╗ ╚████╔╝ ███████╗        ██║██╔██╗ ██║██║   ██║
╚════██║  ╚██╔╝  ╚════██║        ██║██║╚██╗██║██║   ██║
███████║   ██║   ███████║███████╗██║██║ ╚████║██║   ██║
╚══════╝   ╚═╝   ╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝
                                                          ';
sleep 3
echo 'A Cyber Punk Installer';
sleep 2
echo '_______________________________________________________________________________';
sleep 3
echo LOOKING FOR OLD INSTALL \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "."

cp ~/.sys_init/backups/backup.profile ~/.profile
cp ~/.sys_init/backups/backup.bashrc ~/.bashrc
cp ~/.sys_init/backups/backup.zshrc ~/.zshrc
rm -Rf ~/.sys_init && mkdir ~/.sys_init

echo SETTING UP DEATH RAY \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "." \
  && sleep 1 \
  && echo "."
tar cvf sys.tar *
cp -R *.tar ~/.sys_init/
cd ~/.sys_init/
tar xvf sys.tar
cd -
cp ~/.profile ~/.sys_init/backups/backup.profile
cp ~/.bashrc ~/.sys_init/backups/backup.bashrc
cp ~/.zshrc ~/.sys_init/backups/backup.zshrc
echo '_______________________________________________________________________________
';
tree -a ~/.sys_init/
echo '________________________________________________________________________________
IS THAT CORRECT?[N]:
';
read CHECK_1
if [ $CHECK_1 == "" ]; then
	exit
	else
	echo "distroy all humans"
fi

echo BACKUP COMPLETE...
sleep 1
echo TIME TO DESTROY...
rm -f ~/.profile
rm -f ~/.bashrc
rm -f ~/.zshrc
echo SYNTHISIZING IMPROVED SYSTEM....
ln -s ~/.sys_init/profile/profile ~/.profile
ln -s ~/.sys_init/profile/profile ~/.bashrc
ln -s ~/.sys_init/profile/zsh.profile ~/.zshrc
echo PROCESS COMPLETE....
ls -lA ~
sleep 1
tree -a ~/.sys_init
echo PROCESS COMPLETE....
exit
# Jaike Howard 2015
# n_v83r@mhlovecraft.net
# fnord
