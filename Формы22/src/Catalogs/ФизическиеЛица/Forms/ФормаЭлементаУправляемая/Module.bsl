
&НаКлиенте
Процедура ДобавитьПроект(Команда)
	ПараметрыФормы = Новый Структура;
	ПараметрыФормы.Вставить("Руководитель", Объект.Ссылка);
	ОткрытьФорму("Справочник.Проекты.Форма.ФормаЭлемента", ПараметрыФормы);
КонецПроцедуры
