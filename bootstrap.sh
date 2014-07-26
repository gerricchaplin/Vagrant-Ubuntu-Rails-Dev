#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

sudo apt-get -y install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
curl -L https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
echo "source /etc/profile.d/rvm.sh" >> ~/.bashrc
rvm install 2.1.2
rvm use 2.1.2 --default
ruby -v
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs

gem install rails

rails -v

#rm -rf /var/www
#ln -fs /vagrant /var/www

