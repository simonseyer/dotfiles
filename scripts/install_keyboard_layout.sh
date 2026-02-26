if [ ! -d "/Library/Keyboard Layouts/Roman.bundle" ]; then
    echo "Installing USGerman keyboard layout..."
    unzip -q USGermanKeyboardLayout.zip -d /tmp/USGerman
    sudo cp -R /tmp/USGerman/*/Roman.bundle "/Library/Keyboard Layouts/"
    rm -rf /tmp/USGerman
    echo "✓ USGerman keyboard layout installed"
    echo "⚠ Remember to: System Settings → Keyboard → Input Sources → + → Others → U.S. With Umlauts via Option Key"
    echo "⚠ Log out and back in once to activate it fully"
else
    echo "✓ USGerman keyboard layout already installed"
fi
