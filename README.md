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

### Локализация
flutter_localizations
intl

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

## Suppported platforms
Android >= 5.0, iOS >= 12.0.
Поддержка планшетов и горизонтального положения не предусмотрена. 
Поскольку мы пользуемся адаптивной вёрсткой, вне зависимости от того, какое разрешение на телефоне, оно будет открываться и просматриваться корректно. В нашем случае, отображение будет проверяться на таких устройствах, как iPhone моделей XR и 11, Realme Narzo 30, Honor 20 Pro, POCO M6 Pro, Realme c31, а также F+ R5070E с ОС Аврора