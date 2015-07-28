#! /bin/bash 

cd ~

rm .profile
rm .bashrc
rm .zshrc

ls --color=always -lAhrt | egrep --color=always '.profile|.bashrc|.zshrc'

echo IS THAT OK?
read CHECK_1

cp my-profile .profile
cp my-zshrc .zshrc 
cp my-bashrc .bashrc


ls --color=always -lArt | egrep --color=always '.profile|.bashrc|.zshrc'
echo IS THAT OK?
read CHECK_2

cd -

exit
