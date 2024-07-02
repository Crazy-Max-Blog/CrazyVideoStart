[![Foo](https://img.shields.io/badge/page-on%20website-blue.svg?style=flat-square)](https://crazymax.is-a.dev/CrazyVideoStart/docs/v0.1)
[![Foo](https://img.shields.io/badge/page-on%20github-blue.svg?style=flat-square)](https://github.com/Crazy-Max-Blog/CrazyVideoStart/tree/v0.1)

[![Foo](https://img.shields.io/badge/ПОДПИСАТЬСЯ-НА%20МОЙ%20КАНАЛ-brightgreen.svg?style=social&logo=telegram&color=blue)](https://t.me/crazy_max_2023)
# CrazyVideoStart

## Как сделать

[Видосик](https://www.youtube.com/watch?v=yxdm4b68FQs)

### Устанавливаем всё
#### Скачиваем прогу
  - Скачиваем [архив](https://github.com/Crazy-Max-Blog/CrazyVideoStart/archive/refs/tags/v0.1.zip)<!--https://github.com/Crazy-Max-Blog/CrazyVideoStart/archive/refs/heads/main.zip-->
  - Распаковываем архив
  
#### Скачиваем Processing
  - Переходим по [ссылке](https://processing.org/releases)
  - Выбираем `Version 3.5.4`
  - Выбираем версию под ОС
  
#### Добавляем либы
  - Копируем `CrazyVideoStart-main/libs/VideoExport` в `Документы/Processing/libraries`

### Настраиваем и запускаем
  - Открываем `CrazyVideoStart-main/src/CrazyVideoStart/CrazyVideoStart.pde`
  - В начале файла заменяем настройки на нужные
```
/*---------------------Settings---------------------*/
String s="CrazyMax Channel";  // Строка снизу
float k1 = 0.5;               // Размеры изображения в начале
float k2 = 0.35;              // Размеры изображения в конце
String p="result.mp4";        // Название файла результата
String imp="lr.png";          // Название файла картинки (нужна скруглённая картинка (я делал здесь: https://web-tool.org/create-round-image/))
/*-------------------End Settings-------------------*/
```
  - Запускаем по стрелочке сверху слева
  - В первый раз потребуется указать вайл программы ffmpeg. Извлекаем `CrazyVideoStart-main/tools/ffmpeg-7.0-win64.zip`, и указываем `.exe` файл
  - Перезапускаем программу
  - Дожидаемся вывода до конца, и готовый файл будет в папке с кодом (`CrazyVideoStart-main/src/CrazyVideoStart/`)
  - Готово! Теперь можно изменить видео в видео-редакторе (к примеру изменить скорость и добавить музыки) (Я использую Clipchamp)
