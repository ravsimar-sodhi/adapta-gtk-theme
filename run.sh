#!/bin/sh

###
sudo rm -rf /usr/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
sudo rm -rf ~/.local/share/themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}
sudo rm -rf ~/.themes/{Adapta,Adapta-Eta,Adapta-Nokto,Adapta-Nokto-Eta}

./autogen.sh --prefix=/usr \
    --enable-parallel \
    --disable-gnome \
    --disable-cinnamon \
    --disable-xfce \
    --disable-mate \
    --disable-openbox \
    --disable-flashback \
    --with-selection_color=#458588 \
    --with-accent_color=#83a598 \
    --with-suggestion_color=#689d6a \
    --with-destruction_color=#cc241d
make
sudo make install
