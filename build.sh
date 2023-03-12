export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

say -v "Bad News" "Start generating app" && flutter build apk --split-per-abi && say -v "Bad News" "app has been generated" &&  adb install "build/app/outputs/flutter-apk/app-arm64-v8a-release.apk"