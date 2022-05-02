
red=31
cyan=36
boldred="\e[1;${red}m"
boldcyan="\e[1;${cyan}m"
end="\e[0m"

winter_dir=$(pwd)
uid=$(id -u)
user=$(whoami)

printf "${boldred}\n\nSetting up neovim for $user ${end}\n"

if [ uid == 0 ]
then
	cd /etc/xdg/
else
	cd ~/.config/
fi
{
    rm -rf nvim
	ln -s $winter_dir/nvim
} || {
	ln -s $winter_dir/nvim
}
printf "${boldcyan}\nDone!${end}"
cd $winter_dir
printf "${boldred}\n\nInstall vim-plug? ${boldcyan}(Y/n)${end}"
read opt

if [ $opt == "n" ]
then
	printf " "
else
	bash ./nvim-plugins.sh
fi

