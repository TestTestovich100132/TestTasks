### Тест-кейс 1: Отображение текущего рабочего каталога без опций
**Заголовок:** Отображение текущего рабочего каталога по умолчанию

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp`
3. Выполнить команду `pwd`.

**Ожидаемый результат:** Отображается путь к каталогу /tmp.

---

### Тест-кейс 2: Отображение текущего рабочего каталога с опцией -L
**Заголовок:** Использование опции -L для отображения логического пути

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp`
3. Выполнить команду `ln -s /usr symlink_dir`.
4. Выполнить команду `cd symlink_dir`.
5. Выполнить команду `pwd -L`.

**Ожидаемый результат:** Отображается путь, включающий символическую ссылку '/tmp/symlink_dir'.


---


### Тест-кейс 3: Отображение текущего рабочего каталога с опцией -P
**Заголовок:** Использование опции -P для отображения физического пути

**Шаги:**
1. Открыть терминал.
2. Выполнить команду `cd /tmp`
3. Выполнить команду `ln -s /usr symlink_dir`.
4. Выполнить команду `cd symlink_dir`.
5. Выполнить команду `pwd -P`.

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