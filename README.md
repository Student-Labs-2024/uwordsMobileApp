# uwords
Cross-platform language learning application

## Features
- Onboarding: An introduction to the app for new users

- Learning system: Various exercises for learning words.

- Audio analysis: The ability to make a list of words to study based on any recording provided by the user.

- Authorization: Authorization via Google and vk/mail

- Personal account: A user-friendly interface for obtaining statistics on the studied words.

- Gamification: A variety of achievements for the user's progress.

- Subscription system: Secure payment for orders via built-in payment systems.

## Stack
Flutter
MVC
Firebase

## Packages
### State-management
Bloc

### Network
Dio

### Code generation
Retrofit
Freezed

### Navigation
go_router

### Authorization
firebase_core
firebase_auth
flutter_login_vk

### Files
path_provider
shared_preferences 
path


### Database
drift
sqlite3
sqlite3_flutter_libs database

### Audio
flutter_sound

### Permissions
permission_handler

### UI
flutter_inset_shadow

### Localization
flutter_localizations
intl

### Other
build_runner
build_runner_core
json_annotation
json_serializable
jwt_decoder

## Launch Instructions
1. Get the following files from the authors of the project:
- google-services.json
- GoogleService-Info.plist
- env.dart
- strings.xml

And place it in the following directories:
env.dart in lib/

google-services.json in android/app/
strings.xml in android/app/src/main/res/values/

GoogleService-Info.plist in ios/Runner/

2. In the source folder of the project, enter the command

```
flutter pub get
```

3. Regenerate files related to code generation
```
flutter pub run build_runner build
```

4. To launch the application, use an emulator or an iOS/Android device with developer mode enabled and allowed postponement.To run on the device, you should use the command by selecting the device.
```
flutter run
```

## Suppported platforms
Android >= 5.0, iOS >= 13.0.
Support for tablets and horizontal position is not provided. 
Since we use adaptive layout, regardless of what resolution is on the phone, it will open and view correctly. In our case, the display will be checked on devices such as iPhone models XR and 11, Realme Narzo 30, Honor 20 Pro, POCO M6 Pro, Realme c31, as well as F+ R5070E with Aurora OS

## Artifacts
[ADR](https://docs.google.com/document/d/1oXmRUf9dTUVvZbqXc11qJrXbJp27Sv582Gu1IRCFW0g/edit?usp=sharing)
[C4](https://drive.google.com/file/d/1zznv_2it8DJi6eyWcoXtJz3KLtCwG-dH/view?usp=sharing)