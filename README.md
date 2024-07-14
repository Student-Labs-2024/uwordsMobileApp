# uwords
Кросплатформенное приложение для изучения языков

## Особенности
- Онбординг: Введение в приложение для новых пользователей

- Система обучения: Различные упраженения для изучения слов.

- Анализ аудио: Возможность составить список слов для изучения на основе любой записи, предоставленной пользователем.

- Авторизация: Авторизация через Google и vk/почту

- Личный кабинет: Удобный интерфейс для получения статистики по изученным словам.

- Геймификация: Разнообразные достижения за прогресс пользователя.

- Система подписки: Безопасная оплата заказов через встроенные платежные системы.

## Stack
Flutter
MVC
Firebase

## Packages
### State-management
Bloc

### Работа с сетью
Dio

### Кодогенерация
Retrofit
Freezed

### Навигация
go_router

### Авторизация
firebase_core
firebase_auth
flutter_login_vk

### Файлы
path_provider
shared_preferences
path

### База данных
drift
sqlite3
sqlite3_flutter_libs

### Аудио
flutter_sound

### Разрешения
permission_handler

### UI
flutter_inset_shadow

### Другое
build_runner
build_runner_core
json_annotation
json_serializable
jwt_decoder

## Инструкция по запуску
1. Получить у авторов проекта следующие файлы:
- google-services.json
- GoogleService-Info.plist
- env.dart
- strings.xml

И расположить по следующим директориям:
env.dart в lib/

google-services.json в android/app/
strings.xml в android/app/src/main/res/values/

GoogleService-Info.plist в ios/Runner/

2. В исходной папке проекта ввести команду

```
flutter pub get
```

3. Перегенирировать файлы, связанные с кодогенерацией
```
flutter pub run build_runner build
```

4. Для запуска приложения использовать эмулятор или устройства iOS/Android с включенным режимом разработчика и разрешенной откладкой.Чтобы запустить на устройстве стоит воспользоваться командой, выбрав устройство.
```
flutter run
```

5.1. Для сборки приложения под Android использовать команду:
```
flutter build apk --release
```
5.2. Для сборки приложения под iOS использовать команду:
```
flutter build ipa
```
