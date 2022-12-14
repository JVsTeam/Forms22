
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)

	ИмяФормы = ПараметрыВыполненияКоманды.Источник.ИмяФормы;
	
	Если УдалитьНаСервере(ИмяФормы) Тогда
	
		ОбновитьИнтерфейс();		
	
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Функция УдалитьНаСервере(ИмяФормы)

	НастройкиНачальнойСтраницы = ХранилищеСистемныхНастроек.Загрузить("Общее/НастройкиНачальнойСтраницы");
	Если НастройкиНачальнойСтраницы = Неопределено Тогда
	
		Возврат Ложь;	
	
	КонецЕсли;

	СоставФорм = НастройкиНачальнойСтраницы.ПолучитьСоставФорм();
	ИндексЛево = СоставФорм.ЛеваяКолонка.Найти(ИмяФормы);
	ИндексПраво = СоставФорм.ПраваяКолонка.Найти(ИмяФормы);
	
	Если ИндексЛево<>Неопределено Тогда
	
		СоставФорм.ЛеваяКолонка.Удалить(ИндексЛево);		
	
	КонецЕсли;
	
	Если ИндексПраво<>Неопределено Тогда
	
		СоставФорм.ПраваяКолонка.Удалить(ИндексПраво); 		
	
	КонецЕсли;
	
	Если ИндексЛево<>Неопределено или ИндексПраво<>Неопределено Тогда
		
		НастройкиНачальнойСтраницы.УстановитьСоставФорм(СоставФорм);
		ХранилищеСистемныхНастроек.Сохранить("Общее/НастройкиНачальнойСтраницы", , НастройкиНачальнойСтраницы);
		Возврат Истина;
		
	Иначе
		
		Возврат Ложь;
	
	КонецЕсли;
	
КонецФункции // УдалитьНаСервере()










