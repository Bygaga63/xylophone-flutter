# Xylophone 🎹

## Required
Для создания ксилофона можно восопользоваться сторонней библиотекой 
```
audioplayers: ^0.13.6                                       //pubspec.yaml

import 'package:audioplayers/audio_cache.dart';             //lib/main.dart

final player = AudioCache();
player.play('url')                                          //по дефолту библиотека считает, что музыкальный файлы лежат в папке assets
```
Нужно добавить ее в зависимости pubspec.yaml и далее импортировать в виджет

#### Dart constructor
Есть сокращенная версия конструктов без открытия фигурных скобок
```
class AudioPlayer extends StatelessWidget {
  final int number;
  final Color color;

  AudioPlayer(this.number, this.color);
}
```

#### InkWell
По дефолту звук нажатия кнопки отключить нельзя, поэтому пришлось отказаться от FlatButton в пользу
*InkWell*, у него есть свойство *enableFeedback*, которое можно оключить.

