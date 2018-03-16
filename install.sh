#! /bin/bash
error=`tput setaf 1`
success=`tput setaf 2`
reset=`tput sgr0`

filename=`pwd`
workspace="iOSTDD"
if ! [ ${filename##*/} = $workspace ];then
  echo "${error}Error: please run script \
in directory [${workspace}]${reset}"
  exit 1
fi

function cocoapods() {
  gem install bundler
  echo "${success}Bundler installed!${reset}"
  bundle install
  echo "${success}Cocoapods installed!${reset}"
}

function quick_template() {
  git clone git@github.com:Quick/Quick.git quick
  cd quick
  rake templates:install
  echo "${success}Quict template installed!${reset}"
  cd ..
  rm -rf quick
}

cocoapods
quick_template
