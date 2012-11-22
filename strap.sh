#dependency installation

gcc --version
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew doctor

brew install git ack chuck gist imagemagick libevent libksba macvim mutt pcre redis wget ant cmake imagesnap libffi libtiff markdown mysql pidof scons xz autoconf coffee-script glib irssi libfreenect libusb-freenect mcrypt nginx pkg-config screen zsh automake ctags htop jasper libgcrypt libxml2 memcached nmap postgresql spawn-fcgi bazaar gdbm htop-osx jpeg libgpg-error libxslt mobile-shell node protobuf tokyo-cabinet boost gettext hub libassuan libiconv little-cms mongodb ossp-uuid readline vim curl wget

# if cellar error
#sudo mkdir /usr/local/Cellar
sudo chown -R `whoami` /usr/local
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
curl -L https://get.rvm.io | bash -s stable --ruby
rvm get head
rvm requirements
rvm install 1.9.3  # --with-gcc=clang

gem install rake
gem install rack
gem install rails
gem install passenger
passenger-install-nginx-module

#cd /opt/
#wget http://fastdl.mongodb.org/linux/mongodb-linux-i686-1.6.3.tgz
#tar zxvf mongodb-linux-i686-1.6.3.tgz
#mv mongodb-linux-i686-1.6.3 /opt/mongodb

#mkdir -p /srv/db/mongodb
#touch /srv/db/mongodb.log

#cd /opt/bin/
#wget https://library.linode.com/databases/mongodb/reference/mongodb-start
#wget https://library.linode.com/databases/mongodb/reference/mongodb-stop
#chmod +x *

rails new my_app --skip-active-record


#editor config
#hg clone https://vim.googlecode.com/hg/ vim
#cd vim
#./configure --enable-rubyinterp --enable-pythoninterp --with-features=HUGE --enable-gui=no --disable-gpm --enable-multibyte --prefix=$HOME
#make
#sudo make install
