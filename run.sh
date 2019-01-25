#!/bin/sh

./autogen.sh --prefix=/usr --enable-parallel --disable-gnome --disable-cinnamon --disable-xfce --disable-mate --disable-openbox --disable-flashback --with-selection_color=#458588 --with-accent_color=#458588 --with-suggestion_color=#458588 --with-destruction_color=#cc241d
make
sudo make install
