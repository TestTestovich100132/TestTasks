# Задание №3
## Условие задания:
Составить минимум один баг-репорт

## Сопутствующая информация:
Все ниже перечисленные баг-репорты были сформированы в процессе исследования ОС Astra Linux SE 1.6 (Smolensk).

# Информация по баг-репортам:
- [BugReport1](BugReport1.md) - данный баг был обнаружен во время прохождения [Тест-кейса №14 - Работа в NFS при отключенном сервисе](../task2/TestCases_for_pwd.md)
- [BugReport2](BugReport2.md) - представляет собой описание неожиданного поведения утилиты `clear`
- [BugReport3](BugReport3.md), [BugReport4](BugReport4.md)
, [BugReport5](BugReport5.md), [BugReport6](BugReport6.md) - Данные баг-репорты касаются утилиты pwd. Все баги рассматриваются с точки зрения мануала этой утилиты, поскольку мануал включен непосредственно в бинарный файл утилиты, счёл его действительной документацией. В реальных условиях необходимо проконсультироваться с аналитиками или разработчиками, чтобы определить, является ли это поведение ожидаемым. Учитывая различия в описании поведения между мануалом и справкой --help, подобное может вводить пользователя в заблуждение.
