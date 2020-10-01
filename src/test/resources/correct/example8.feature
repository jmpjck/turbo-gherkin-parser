# from https://github.com/Pr-Mex/vanessa-automation/blob/develop/features/Core/ErrorDetails/%D0%9E%D0%BA%D0%BD%D0%BE%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B5%D0%B9%D0%9E%D1%88%D0%B8%D0%B1%D0%BA%D0%B8.feature
# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA11_запускать_сценарии_на_выполнение

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839

@SingleCodeCoverage

@tree


Функционал: Детали ошибки



  Сценарий: Детали ошибки. Сравнение макетов. Толстый клиент.

    И Я запоминаю значение выражения '$КаталогИнструментов$\Tools\CompareFiles' в переменную "КаталогСлужебнойБазы"
//    Если Файл "$КаталогСлужебнойБазы$" существует тогда
    Тогда я очищаю каталог "$КаталогСлужебнойБазы$"
    Тогда я удаляю файл "$КаталогСлужебнойБазы$"

    Дано Я закрыл все окна клиентского приложения
    И я закрываю сеанс TESTCLIENT
    Когда Я запускаю служебный сеанс TestClient с ключом TestManager толстый клиент в той же базе


    Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

  //для формы списка
    И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДеталиОшибки/ДеталиОшибки01"



    Когда открылось окно '*Vanessa Automation'
    И я перехожу к закладке с именем "ГруппаСлужебная"
    И в поле с именем 'КаталогПроекта' я ввожу текст '$КаталогИнструментов$'

  //контроль, всё работает, когда пустой каталог для формирования json с ошибкой
    И я перехожу к закладке с именем "ГруппаНастройки"
    И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
    И я устанавливаю флаг с именем 'ДелатьЛогОшибокВТекстовыйФайл'
    И в поле с именем 'ИмяКаталогаЛогОшибок' я ввожу текст ''
    И я перехожу к следующему реквизиту
    И я снимаю флаг с именем 'ДелатьЛогОшибокВТекстовыйФайл'


    И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
    И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

    И пауза 3

    И в таблице "ДеревоТестов" я перехожу к строке:
      | 'Наименование'                                                                          |
      | 'Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ДляДеталейОшибки01"' |

    И в таблице "ДеревоТестов" я выбираю текущую строку
    Тогда открылось окно 'Детали ошибки'

    И я устанавливаю флаг с именем 'ТолькоТекстЯчеек'
    И я устанавливаю флаг с именем 'СУчетомРегулярныхВыражений'

    И я нажимаю на кнопку с именем 'ФормаСравнитьТаблицы'

    Когда В панели открытых я выбираю '*Vanessa Automation*'

    И Я закрываю окно 'Детали ошибки'
    Тогда открылось окно '*Vanessa Automation*'

    И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

    И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
    И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


  Сценарий: Активизация основного клиента
    И я закрываю TestClient "TM_Толстый"
    И в таблице клиентов тестирования я активизирую строку 'Этот клиент'


  Сценарий: Детали ошибки. Сравнение макетов. Тонкий клиент. Для основной сборки.

    И Я запоминаю значение выражения '$КаталогИнструментов$\Tools\CompareFiles' в переменную "КаталогСлужебнойБазы"
//    Если Файл "$КаталогСлужебнойБазы$" существует тогда
    Тогда я очищаю каталог "$КаталогСлужебнойБазы$"
    Тогда я удаляю файл "$КаталогСлужебнойБазы$"

    Дано Я закрыл все окна клиентского приложения
    И я закрываю сеанс TESTCLIENT
    Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе


    Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

  //для формы списка
    И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ДеталиОшибки/ДеталиОшибки01"



    Когда открылось окно '*Vanessa Automation'
    И я перехожу к закладке с именем "ГруппаСлужебная"
    И в поле с именем 'КаталогПроекта' я ввожу текст '$КаталогИнструментов$'


    И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
    И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

    И пауза 3

    И в таблице "ДеревоТестов" я перехожу к строке:
      | 'Наименование'                                                                          |
      | 'Дано Табличный документ "РеквизитТабличныйДокумент" равен макету "ДляДеталейОшибки01"' |

    И в таблице "ДеревоТестов" я выбираю текущую строку
    Тогда открылось окно 'Детали ошибки'

    И я устанавливаю флаг с именем 'ТолькоТекстЯчеек'
    И я устанавливаю флаг с именем 'СУчетомРегулярныхВыражений'

    И я нажимаю на кнопку с именем 'ФормаСравнитьТаблицы'

    И пауза 30


    И Я закрываю окно 'Детали ошибки'
    И пауза 1
    И я активизирую окно "*Vanessa Automation*"
    Тогда открылось окно '*Vanessa Automation*'

    И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

    И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
    И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


    И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"

    И я перехожу к закладке с именем "ГруппаНастройки"
    И я устанавливаю флаг с именем 'DebugLog2'


    И в таблице "ДанныеКлиентовТестирования" я нажимаю на кнопку с именем 'ТестКлиентДобавить'
    И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияИмя' я ввожу текст 'ОкноСравнениеМакетов'
    И я перехожу к следующему реквизиту
    И я перехожу к следующему реквизиту
    И в таблице "ДанныеКлиентовТестирования" из выпадающего списка с именем "ДанныеКлиентовТестированияТипКлиента" я выбираю точное значение 'Тонкий'
    И я перехожу к следующему реквизиту
    И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПутьКИнфобазе' я ввожу текст '111'
    И я перехожу к следующему реквизиту
    И я перехожу к следующему реквизиту
    И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияИмяКомпьютера' я ввожу текст 'localhost'
    И я перехожу к следующему реквизиту
    И в таблице "ДанныеКлиентовТестирования" в поле с именем 'ДанныеКлиентовТестированияПорт' я ввожу текст '48222'
    И в таблице "ДанныеКлиентовТестирования" я завершаю редактирование строки

    И я выбираю пункт контекстного меню с именем 'КонтМенюПодключитьВыбранного' на элементе формы с именем "ДанныеКлиентовТестирования"

    Затем я жду, что в сообщениях пользователю будет подстрока "Уже открытый TestClient подключен" в течение 30 секунд

    И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient


  Сценарий: Активизация основного клиента
    И я закрываю TestClient "TM"
    И в таблице клиентов тестирования я активизирую строку 'Этот клиент'