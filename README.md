# CrazyVideoStart

## Как сделать

## Устанавливаем всё
### Скачиваем прогу
  - Скачиваем архив
  ![image](https://github.com/Crazy-Max-Blog/CrazyVideoStart/assets/127091629/84960b04-0e8d-414f-909c-2aee0c567df2)
  ![image](https://github.com/Crazy-Max-Blog/CrazyVideoStart/assets/127091629/0f6af330-9acc-4bb8-994d-4ce4e6401b43)
  
  - Распаковываем архив
  
### Скачиваем Processing
  - Переходим по [ссылке](https://processing.org/releases)
  - Выбираем `Version 3.5.4`
  - Выбираем версию под ОС
  
### Добавляем либы
  - Копируем `CrazyVideoStart-main/libs/VideoExport` в `Документы/processing/libraries`

## Настраиваем и запускаем
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
