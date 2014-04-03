# this script just joins together the commands
# you need to build the SDK from the cli, install it on device,
# and run it.
cd MapboxAndroidSDK
gradle assembleDebug install
cd ../MapboxAndroidSDKTestApp
gradle assembleDebug installDebug
adb shell am start -n "com.mapbox.mapboxsdk.android.testapp/com.mapbox.mapboxsdk.android.testapp.MainActivity" -a android.intent.action.MAIN -c android.intent.category.LAUNCHER
