### Тест-кейс 1: Отображение текущего рабочего каталога без опций
**Заголовок:** Отображение текущего рабочего каталога по умолчанию

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp && pwd`

**Ожидаемый результат:** Отображается путь к каталогу /tmp.

---

### Тест-кейс 2: Отображение текущего рабочего каталога с опцией -L
**Заголовок:** Использование опции -L для отображения логического пути

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp && ln -s /usr symlink_dir`
3. Выполнить команду `cd symlink_dir && pwd -L`.

**Ожидаемый результат:** Отображается путь, включающий символическую ссылку '/tmp/symlink_dir'.

---

### Тест-кейс 3: Отображение текущего рабочего каталога с опцией -P
**Заголовок:** Использование опции -P для отображения физического пути

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp && ln -s /usr symlink_dir`
3. Выполнить команду `cd symlink_dir && pwd -P`.

**Ожидаемый результат:** Отображается физический путь без символических ссылок '/usr'.

---

### Тест-кейс 4: Отображение справки по команде pwd
**Заголовок:** Отображение справочной информации с помощью опции --help

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `pwd --help`.

**Ожидаемый результат:** Отображается справочная информация по использованию команды pwd.

---

### Тест-кейс 5: Отображение версии команды pwd
**Заголовок:** Отображение информации о версии утилиты с помощью опции --version

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `pwd --version`.

**Ожидаемый результат:** Отображается информация о версии утилиты pwd.

---

### Тест-кейс 6: Отображение текущего рабочего каталога без опций в оболочке /bin/sh
**Заголовок:** Отображение текущего рабочего каталога при использовании утилиты в оболочке `/bin/sh`

**Предварительные условия:** Тест кейс необходимо выполнять из учётной записи привелигированного пользователя.

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `chsh -s /bin/sh`
3. Выйти из учётной записи текущего пользователя.
4. Ввести пароль привелигированного пользователя.
5. Авторизоваться в системе под полозователем из под которого выполнялись шаги 1-3.
6. Проверить текущею оболочку командой `echo $SHELL`
7. Выполнить команду `cd /tmp && pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp`.

---

### Тест-кейс 7: Отображение текущего рабочего каталога без опций в оболочке /bin/dash
**Заголовок:** Отображение текущего рабочего каталога при использовании утилиты в оболочке `/bin/dash`

**Предварительные условия:** Тест кейс необходимо выполнять из учётной записи привелигированного пользователя.

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `chsh -s /bin/dash`
3. Ввести пароль привелигированного пользователя.
4. Выйти из учётной записи текущего пользователя.
5. Авторизоваться в системе под полозователем из под которого выполнялись шаги 1-3.
6. Проверить текущею оболочку командой `echo $SHELL`
7. Выполнить команду `cd /tmp && pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp`.

---

### Тест-кейс 8: Отображение текущего рабочего каталога без опций в оболочке /bin/rbash
**Заголовок:** Отображение текущего рабочего каталога при использовании утилиты в оболочке `/bin/rbash`

**Предварительные условия:** Тест кейс необходимо выполнять из учётной записи привелигированного пользователя.

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `chsh -s /bin/rbash`
3. Ввести пароль привелигированного пользователя.
4. Выйти из учётной записи текущего пользователя.
5. Авторизоваться в системе под полозователем из под которого выполнялись шаги 1-3.
6. Проверить текущею оболочку командой `echo $SHELL`
7. Выполнить команду `cd /tmp && pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp`.

---

### Тест-кейс 9: Отображение текущего рабочего каталога для каталога с максимальной длиной пути 
**Заголовок:** Отображение текущего рабочего каталога для каталога с максимальной длиной пути в 4098 символов

**Предварительные условия:** 
1. Скачать скрипт `create_long_path.sh` на тестовую машину.
2. Выполнить команду `chmod +x create_long_path.sh`

**Шаги:**
1. Открыть терминал.
2. Перейти в директорию содержащию скрипт `create_long_path.sh`
3. Выполнить команду `. ./create_long_path.sh`
4. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу с длинной пути в 4096 символов.

---

### Тест-кейс 10: Обработка некорректных опций
**Заголовок:** Ввод некорректных опций для команды pwd

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `pwd --invalid-option`.

**Ожидаемый результат:** Отображается сообщение об ошибке с информацией о некорректной опции.

---

### Тест-кейс 11: Проверка работы в каталоге без прав доступа
**Заголовок:** Отображение текущего рабочего каталога для каталога с нулевыми правами для группы пользователя и других пользователей.

**Предварительные условия:** 
1. На тестовой машине должен быть создан непревилилированный пользователь без домашнего каталога. Создать его можно при помощи команды `sudo useradd user2`

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir readonly_dir && chmod 700 readonly_dir && cd readonly_dir`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается полный путь к текущему рабочему каталогу, несмотря на отсутствие прав.

---

### Тест-кейс 12: Проверка работы в каталоге без прав доступа
**Заголовок:** Отображение текущего рабочего каталога для каталога с нулевыми правами для группы пользователя и других пользователей.

**Предварительные условия:** 
1. На тестовой машине должен быть создан непревилилированный пользователь без домашнего каталога. Создать его можно при помощи команды `sudo useradd user2`

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir readonly_dir && chmod 700 readonly_dir && cd readonly_dir`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается полный путь к текущему рабочему каталогу, несмотря на отсутствие прав.

---

### Тест-кейс 13: Работа в NFS
**Заголовок:** Проверка работы команды pwd в файловой системе NFS. Убедиться, что команда pwd корректно отображает текущий рабочий каталог, находящийся на сетевом файловом ресурсе NFS.

**Предварительные условия:** 
1. Подготовленный сервер с настроенным NFS сервисом `nfs-kernel-server`.
2. Установленный клиент `nfs-common` на тестовой клиенской машине.

**Шаги:**
1. Открыть терминал на клиентской машине.
2. Подключить NFS ресурс командой `mount -t nfs <NFS_SERVER>:/path/to/nfs /mnt/nfs`.
3. Перейти в NFS каталог командой `cd /mnt/nfs`
4. Выполнить команду `pwd`

**Ожидаемый результат:** Выводится корректный путь к текущему рабочему каталогу `/mnt/nfs`

---

### Тест-кейс 14: Работа в NFS при отключенном сервисе
**Заголовок:** Проверка работы команды pwd в файловой системе NFS, после начала работы на этом ресурсе с клиенской машины и остановке сервиса `nfs-kernel-server`на сервере.

**Предварительные условия:** 
1. Подготовленный сервер с настроенным NFS сервисом `nfs-kernel-server`.
2. Установленный клиент `nfs-common` на тестовой клиенской машине.

**Шаги:**
1. Открыть терминал на клиентской машине.
2. Подключить NFS ресурс командой `mount -t nfs <NFS_SERVER>:/path/to/nfs /mnt/nfs`.
3. Перейти в NFS каталог командой `cd /mnt/nfs`
4. Выполнить команду `sudo systemctl stop nfs-kernel-server` на сервере.
5. Выполнить команду `pwd` на клиенсткой машине.

**Ожидаемый результат:** Выводится корректный путь к текущему рабочему каталогу `/mnt/nfs`

---

### Тест-кейс 15: Работа в NTFS
**Заголовок:** Проверка работы команды pwd в файловой системе NTFS. Убедиться, что команда pwd корректно отображает текущий рабочий каталог, находящийся на разделе NTFS.

**Предварительные условия:** 
1. Подключенный NTFS раздел.

**Шаги:**
1. Открыть терминал.
2. Подключить NFS ресурс командой `mount -t ntfs-3g /dev/sdX1 /mnt/ntfs` (где /dev/sdX1 - NTFS раздел).
3. Перейти в NFS каталог командой `cd /mnt/ntfs`
4. Выполнить команду `pwd`.

**Ожидаемый результат:** Выводится корректный путь к текущему рабочему каталогу на NTFS `/mnt/ntfs`

---

### Тест-кейс 16: Работа в каталоге с русскими символами
**Заголовок:** Проверка отображения текущего рабочего каталога с русскими символами

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir /tmp/тест && cd /tmp/тест`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp/тест`.

---

### Тест-кейс 17: Работа в каталоге с длинным именем
**Заголовок:** Проверка отображения текущего рабочего каталога с длинным именем

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir /tmp/this_is_a_very_long_directory_name_that_should_be_tested && cd /tmp/this_is_a_very_long_directory_name_that_should_be_tested`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp/this_is_a_very_long_directory_name_that_should_be_tested`.

---

### Тест-кейс 18: Работа в каталоге с пробелами в имени
**Заголовок:** Проверка отображения текущего рабочего каталога с пробелами в имени

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir "/tmp/test dir with spaces" && cd "/tmp/test dir with spaces"`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp/test dir with spaces`.


### Тест-кейс 19: Работа в каталоге с правами только на чтение
**Заголовок:** Проверка работы команды pwd в каталоге с правами только на чтение

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir /tmp/readonly_dir && chmod 555 /tmp/readonly_dir && cd /tmp/readonly_dir`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp/readonly_dir`.

---

### Тест-кейс 20: Работа в каталоге с нестандартными символами
**Заголовок:** Проверка отображения текущего рабочего каталога с нестандартными символами

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `mkdir /tmp/dir_with_@_#_! && cd /tmp/dir_with_@_#_!`
3. Выполнить команду `pwd`

**Ожидаемый результат:** Отображается путь к каталогу `/tmp/dir_with_@_#_!`.