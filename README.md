# cordova-plugin-google-placepicker<br>[![NPM version][npm-version]][npm-url] [![NPM downloads][npm-downloads]][npm-url]
> Cordova/Phonegap iOS plugin for [Google Place Picker](https://developers.google.com/places/ios-api/placepicker)

## Installation

    cordova plugin add https://github.com/RexDS/cordova-plugin-google-placepicker.git
    or
    phonegap plugin add https://github.com/RexDS/cordova-plugin-google-placepicker.git

    cordova plugin add cordova-plugin-google-placepicker
    or
    phonegap plugin add cordova-plugin-google-placepicker

Go to yor Google or Firebase console and export `GoogleService-Info.plist`. Put it into `platforms/ios/{Project}/Resources` and make sure that `GoogleService-Info.plist` added to your xcode project workspace.

## Supported Platforms

- iOS

## Methods

### pickPlace(_place_, _callback_)
Open the Google Place Picker and get result
```js
window.plugins.google.placepicker.pickPlace(null, callback);
or
window.plugins.google.placepicker.pickPlace(place, callback);
```

[npm-url]: https://www.npmjs.com/package/cordova-plugin-google-placepicker
[npm-version]: https://img.shields.io/npm/v/cordova-plugin-google-placepicker.svg
[npm-downloads]: https://img.shields.io/npm/dt/cordova-plugin-google-placepicker.svg
