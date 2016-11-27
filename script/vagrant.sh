#!/bin/bash

sudo locale-gen en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt-get update -y

su - vagrant -c 'command curl -sSL https://rvm.io/mpapis.asc | gpg --import -'
su - vagrant -c 'curl -sSL https://get.rvm.io | bash -s stable'
su - vagrant -c 'rvm install 2.2.5'
su - vagrant -c 'rvm install 2.2.5'
su - vagrant -c 'rvm use 2.2.5 --default'
su - vagrant -c 'gem install bundler'
su - vagrant -c 'cd /vagrant && bundle install'

cd /vagrant && bundle exec middleman server --watcher-force-polling --watcher_latency=1 &> ~/middleman.log &
