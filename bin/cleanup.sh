#!/bin/bash
#removes .vimrc
rm .vimrc
#replaces the text with nothing essentially erasing it
sed -i 's/source∼/.dotfiles/bashrc_custom//g' .bashrc
#removes trash directory
rm .TRASH
