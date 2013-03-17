#!/bin/bash

cd ~
for i in `find ~/dotfiles/link -type f`;
  do ln -fs $i `basename $i`
done

