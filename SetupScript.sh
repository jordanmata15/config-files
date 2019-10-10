## Create the .vim folder at the root
mkdir ~/.vim
cd ~/.vim

## Add pathogen to the runtime environment
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Add dracula theme to the .vim folder
git clone https://github.com/jordanmata15/vim
cp -r vim/* ./
rm -rf vim

## Make sure the .vimrc file is in .vim folder
git clone https://github.com/jordanmata15/config-files
cp -r ~/.vim/config-files/.vimrc ~/
rm -rf config-files
