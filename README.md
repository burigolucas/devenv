# devenv

## Setup for Flutter

1. Finish Android Studio setup
   1. Open Android Studio and accept licenses
   2. Download dependencies
   3. Install "Android SDK Command-line tools": select "More Actions" -> "SDK Manager" -> "Language & Frameworks" -> "Android SDK" -> "SDK Tools" -> Select "Android SDK Command-line Tools (latest)" -> "OK"
   4. echo 'export PATH="/var/lib/flatpak/app/com.google.AndroidStudio/current/active/files/extra/android-studio/bin:$PATH"' >> ~/.bashrc
2. Install Flutter SDK
   1. cd ~/Downloads && wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.2-stable.tar.xz
   2. mkdir -p ~/development/
   3. tar -xf ~/Downloads/flutter_linux_3.24.2-stable.tar.xz -C ~/development/
   4. echo 'export PATH="~/development/flutter/bin:$PATH"' >> ~/.bashrc
3. Check installation
   1. Open new shell
   2. Accept licenses:
      1. yes | flutter doctor --android-licenses
   3. flutter doctor

## TODO
- lvim installation fails as nvim not yet in the path on fresh install



mkdir ~/.ssh
chmod 700 ~/.ssh


## TMUX
After fresh install and config with Ansible, press prefix + I (capital i, as in Install) to fetch the plugin.


## Podman-Compose completion
curl -sL https://raw.githubusercontent.com/containers/podman-compose/devel/completion/bash/podman-compose -o ~/.podman-compose-completion
echo 'source ~/.podman-compose-completion' >> ~/.bashrc




codium --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
codium --install-extension redhat.vscode-openshift-connector
codium --install-extension humao.rest-client

## GNOME Key bindings

- Switch windows
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>q']"

- Open terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "GNOME Terminal"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "gnome-terminal --maximize"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Super>t"

- Open VSCodium
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "VSCodium"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "codium"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "<Super>c"

- Enable the custom-keybinding abobe
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

## Configure GNOME Terminal
see Configuring gnome terminal programmatically https://ncona.com/2019/11/configuring-gnome-terminal-programmatically/


GNOME_TERMINAL_PROFILE=`gsettings get org.gnome.Terminal.ProfilesList list | awk -F \' '{print $2}'`
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ font 'Monospace 14'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ use-system-font false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$GNOME_TERMINAL_PROFILE/ audible-bell false



## Gogh color scheme
https://gogh-co.github.io/Gogh/
bash -c  "$(wget -qO- https://git.io/vQgMr)" 


flatpak install flathub com.microsoft.Edge


sudo dnf install okular

codium config

SHIFT+ALT+SPACE for key shortcut "Run selected text"

## ODO

curl -L https://developers.redhat.com/content-gateway/rest/mirror/pub/openshift-v4/clients/odo/v3.16.1/odo-linux-amd64 -o odo
curl -L https://developers.redhat.com/content-gateway/rest/mirror/pub/openshift-v4/clients/odo/v3.16.1/odo-linux-amd64.sha256 -o odo.sha256
echo "$(<odo.sha256)  odo" | shasum -a 256 --check

sudo install -o root -g root -m 0755 odo /usr/local/bin/odo


sudo timeout:
https://www.omglinux.com/change-sudo-timeout-linux/#:~:text=By%20default%2C%20a%20standard%20sudo,tab%20you're%20working%20from.

disable gnome shell extensions:
gsettings set org.gnome.shell disable-user-extensions true


## VS Codium

There is no official RPM package for VSCodium in Fedora. Reason for this is the difficulty to distribute Electron apps that are in line with the packaging guidelines. See:
- https://docs.fedoraproject.org/en-US/packaging-guidelines/what-can-be-packaged/
- https://discussion.fedoraproject.org/t/why-is-there-no-official-vs-codium-package/96211/11
- https://discussion.fedoraproject.org/t/is-there-a-policy-for-packaging-electron-apps/130001/3

Pre-built RPMs from the Upstream open-source repo are available at:
- https://vscodium.com/#intro
- https://github.com/VSCodium/vscodium

A third-party RPM repo that distributes the RPMs are provided by Pavlo Rudyj. See:
- https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/blob/master/updaterepos.sh
- https://fedoraproject.org/wiki/User:Paulcarroty
