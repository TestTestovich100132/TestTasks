# Task 1 - Demonstration Video

## Видео с демонстрацией решения задания:

<a href="http://www.youtube.com/watch?v=7OfGBzTkOB4">
  <img src="src/demo.png" alt="Watch the video" width="400" height="400">
</a>

## Примечание: при клике на данное изображение вас перебросит на YouTube видео с демонстрацией выполнения первого задания. Так же видео можно скачать по следующей ссылке - https://github.com/TestTestovich100132/TestTasks/blob/056008492696957e31deec25101ac307662963a8/task1/src/2024-06-24%2011-59-07.mkv


# Шаги продемонстрированные в видео:

## Конфигурация машины ARM1

### Установка и настройка Apache с PAM

#### Убедиться в наличии пакета:
```sh
dpkg -l | grep libapache2-mod-authnz-pam
```

### Включить модуль authnz_pam:
```sh
sudo a2enmod authnz_pam
```

### Конфигурация Apache:
```sh
sudo vim /etc/apache2/sites-available/000-default.conf
```

Добавить:
```sh
<Directory /var/www/html>
    Options Indexes FollowSymLinks MultiViews
    AllowOverride None
    Require all granted
    AuthType Basic
    AuthName "PAM authentication"
    AuthBasicProvider PAM
    AuthPAMService apache2
    Require valid-user
</Directory>
```

### Настройка PAM для Apache:
```sh
sudo vim /etc/pam.d/apache2
```

Добавить:
```sh
account required pam_tally.so
```

### Выдать права доступа:
```sh
sudo usermod -a -G shadow www-data
sudo setfacl -d -m u:www-data:r /etc/parsec/macdb
sudo setfacl -R -m u:www-data:r /etc/parsec/macdb
sudo setfacl -m u:www-data:rx /etc/parsec/macdb
sudo setfacl -m u:www-data:rw /var/log/faillog
```

### Отключить модуль auth_kerb:
```sh
sudo a2dismod auth_kerb
```

### Настройка заголовков:
```sh
sudo vim /etc/apache2/apache2.conf
```

Добавить:
```sh
Header set MyHeader "%m %c"
```

Включить модуль headers:
```sh
sudo a2enmod headers
```

Перезапустить Apache:
```sh
sudo systemctl restart apache2
```

### Создание пользователя user1 с мандатными атрибутами
#### Добавить пользователя:
```sh
sudo useradd -m -s /bin/bash user1
sudo passwd user1
```

#### Установить мандатные атрибуты:
```sh
sudo pdpl-user -l 0:1 user1
```

### Рекурсивно задать максимальный уровень конфиденциальности для папки /var/www:
```sh
sudo pdpl-file -R 1:0:0:ccnr /var/www
```

### Перенос заранее созданных файлов level0.html и level1.html:
```sh
sudo mv /home/astraadmin/Документы/level0.html /var/www/html/
sudo mv /home/astraadmin/Документы/level1.html /var/www/html/
```

### Установить уровень конфиденциальности файлам:
```sh
sudo pdpl-file 0 /var/www/html/level0.html
sudo pdpl-file 1 /var/www/html/level1.html
```

#### Проверить уровни конфиденциальности:
```sh
pdp-ls -Md /var/www/html/level0.html
pdp-ls -Md /var/www/html/level1.html
```

### Изменить владельца и группу файлов:
```sh
sudo chown www-data:www-data /var/www/html/level0.html /var/www/html/level1.html
sudo chmod 644 /var/www/html/level0.html /var/www/html/level1.html
```

## Конфигурация машины ARM2
### Создание пользователя user1 с мандатными атрибутами
#### Добавить пользователя:
```sh
sudo useradd -m -s /bin/bash user1
sudo passwd user1
```

#### Установить мандатные атрибуты:
```sh
sudo pdpl-user -l 0:1 user1
```