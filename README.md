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

