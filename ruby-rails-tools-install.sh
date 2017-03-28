#!/bin/bash
# provision ruby, rails, and other relevant common dependencies/tools
# rex 2017.0328.0630

RUBY_VER="2.4.1"
RAILS_VER="5.0.2"
SQLITE3_VER="1.3.13"
RUBY_INSTALL_VER="0.6.1"

echo "-->  BEGIN ruby-rails-install.sh"

##########################################################################
# install ruby

apt-get update

apt-get -y install build-essential

wget -O ruby-install-${RUBY_INSTALL_VER}.tar.gz https://github.com/postmodern/ruby-install/archive/v${RUBY_INSTALL_VER}.tar.gz

tar -xzvf ruby-install-${RUBY_INSTALL_VER}.tar.gz

cd ruby-install-${RUBY_INSTALL_VER}/

make install

ruby-install --system ruby $RUBY_VER -- --disable-install-rdoc

cd ..

rm -r ruby-install-*

echo "-->  END Ruby $RUBY_VER installation"

###########################################################################
# Install bundler

echo "-->  Install bundler"

gem install bundler --no-document

###########################################################################
# Install sqlite 3

echo "-->  Install sqlite 3"

apt-get install libsqlite3-dev
gem install sqlite3 -v "${SQLITE3_VER}" --no-document

###########################################################################
# Install rails

echo "-->  Install rails $RAILS_VER"

gem install rails --version=${RAILS_VER} --no-document

###########################################################################
# Install nodejs

echo "-->  Install nodejs"

apt-get -y install nodejs

###########################################################################
# Install git

echo "-->  Install git"

apt-get -y install git

###########################################################################
# Auto-remove some bloat

apt-get autoremove

echo "-->  END ruby-rails-install.sh"
