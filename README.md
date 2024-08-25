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
Flutter,
MVC,
Firebase

## Packages
### State-management
Bloc

### Network
Dio

### Code generation
Retrofit,
Freezed

### Navigation
go_router

### Authorization
firebase_core,
firebase_auth,
flutter_login_vk

### Files
path_provider,
shared_preferences ,
path


### Database
drift,
sqlite3,
sqlite3_flutter_libs database

### Audio
flutter_sound
speech_to_text

### Permissions
permission_handler

### UI
flutter_inset_shadow,
animations,
gradient_borders,
flutter_svg

### Localization
flutter_localizations,
intl,

### Other
build_runner,
build_runner_core,
json_annotation,
json_serializable,
jwt_decoder

## Launch Instructions
1. Get the following files from the authors of the project:
- google-services.json
- GoogleService-Info.plist
- env.dart
- strings.xml
- secrets.dart (file, containing tokenForSendingCode)

And place it in the following directories:
env.dart in lib/

google-services.json in android/app/

strings.xml in android/app/src/main/res/values/

GoogleService-Info.plist in ios/Runner/

secrets.dart in lib/

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

## Screenshots
![register](https://github.com/user-attachments/assets/cf48d596-a144-4936-b0dc-2e1bb42ec389) 
![login](https://github.com/user-attachments/assets/f0d7dacb-05f3-46dd-a205-8f031365f2c8)

![homeScreen](https://github.com/user-attachments/assets/095597d2-ce9c-4d96-9b88-e261a59ed137) 
![topics](https://github.com/user-attachments/assets/cba234b6-b1d8-4a78-8ca8-c50cad9d26d8) 
![Снимок экрана 2024-08-23 063012](https://github.com/user-attachments/assets/04c4a814-fa68-49bb-b83e-754cb6acc9de)

![chooseTest](https://github.com/user-attachments/assets/75e70188-178a-49f0-946d-da84eb7e3a3c)
![letters1](https://github.com/user-attachments/assets/8afae582-0b32-4278-8016-935f317f8309)
![letters2](https://github.com/user-attachments/assets/46fd63c6-63d7-43bc-935a-bb029acc7a34)

![profile](https://github.com/user-attachments/assets/9a1515b9-6b79-426b-be65-79f17ef9cdfa)






