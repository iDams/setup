#!/bin/zsh

if ! ls $(brew --prefix)/bin/php &> /dev/null
then
  echo_title_install "PHP"
  brewtap homebrew/homebrew-php
  brewinstall php55
  #brewinstall php55-http
fi