#dependency installation
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install wget build-essential ruby1.8 ruby1.8-dev irb1.8 rdoc1.8 zlib1g-dev libpcre3-dev libopenssl-ruby1.8 rubygems1.8 libopenssl-ruby libzlib-ruby libssl-dev libcurl4-openssl-dev zsh git-core git-svn ack-grep mercurial bzr zsh libcurl4-openssl-dev libxslt-dev libxml2-dev python2.6-dev libncurses-dev termcap-devel

ruby dotfiles.rb

gem install rake
gem install rack
gem install rails
gem install passenger
passenger-install-nginx-module

cd /opt/
wget http://fastdl.mongodb.org/linux/mongodb-linux-i686-1.6.3.tgz
tar zxvf mongodb-linux-i686-1.6.3.tgz
mv mongodb-linux-i686-1.6.3 /opt/mongodb

mkdir -p /srv/db/mongodb
touch /srv/db/mongodb.log

cd /opt/bin/
wget https://library.linode.com/databases/mongodb/reference/mongodb-start
wget https://library.linode.com/databases/mongodb/reference/mongodb-stop
chmod +x *

#rails new my_app --skip-active-record


#editor config
hg clone https://vim.googlecode.com/hg/ vim
cd vim
#./configure --enable-rubyinterp --enable-pythoninterp --with-features=HUGE --enable-gui=no --disable-gpm --enable-multibyte --prefix=$HOME
./configure --enable-rubyinterp --enable-pythoninterp --with-features=HUGE --enable-gui=no --disable-gpm --enable-multibyte
make
sudo make install
