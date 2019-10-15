sudo apt install libncurses5-dev \
libgtk2.0-dev libatk1.0-dev \
libcairo2-dev python-dev \
python3-dev git \
checkinstall

cp ./vimrc ~/.vimrc
cd /usr && sudo git clone https://github.com/vim/vim.git && cd vim  

sudo ./configure --with-features=huge \
--enable-multibyte \
--enable-pythoninterp=yes \
--with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu/ \  # pay attention here check directory correct
--enable-python3interp=yes \
--with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu/ \  # pay attention here check directory correct
--enable-gui=gtk2 \
--enable-cscope \ 
--prefix=/usr/local/

sudo make VIMRUNTIMEDIR=/usr/local/share/vim/vim81 

cd /usr/vim && sudo checkinstall

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo "please run vim and type :PluginInstall when install done press any key here"
read aok?"can we continue (y|n) : "
python ~/.vim/bundle/YouCompleteMe/install.py
