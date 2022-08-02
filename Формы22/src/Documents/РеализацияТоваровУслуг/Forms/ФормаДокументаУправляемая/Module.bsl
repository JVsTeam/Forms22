
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	УстановитьЗначениеПараметровФО();	
	
КонецПроцедуры

&НаСервере
Процедура УстановитьЗначениеПараметровФО()

	ПараметрыФО = Новый Структура;
	ПараметрыФО.Вставить("Контрагент", Объект.Контрагент);
	ПараметрыФО.Вставить("Организация", Объект.Организация);
	ПараметрыФО.Вставить("Период", Объект.Дата);
	
	УстановитьПараметрыФункциональныхОпцийФормы(ПараметрыФО);

КонецПроцедуры // ()

&НаКлиенте
Процедура КонтрагентПриИзменении(Элемент)
	
	УстановитьЗначениеПараметровФО();
	
КонецПроцедуры

&НаКлиенте
Процедура ОрганизацияПриИзменении(Элемент)
	
	УстановитьЗначениеПараметровФО();
	
КонецПроцедуры

&НаКлиенте
Процедура ДатаПриИзменении(Элемент)
	
	УстановитьЗначениеПараметровФО();
	
КонецПроцедуры

//&НаКлиенте
//Процедура ТоварыНоменклатураНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
//	
//	СтандартнаяОбработка = Ложь;
//	
//	Отбор = Новый Структура;
//	Отбор.Вставить("ВидНоменклатуры",  ПодготовитьМассивВидовНоменклатуры());
//	
//	ПараметрыФормы = Новый Структура;
//	ПараметрыФормы.Вставить("Отбор", Отбор);
//	
//	ОткрытьФорму("Справочник.Номенклатура.ФормаВыбора", ПараметрыФормы,  Элемент);
//	
//КонецПроцедуры

&НаСервере
Функция ПодготовитьМассивВидовНоменклатуры()

	МассивВидовНоменклатуры = Новый Массив;
	МассивВидовНоменклатуры.Добавить(Перечисления.ВидыНоменклатуры.Товар);
	МассивВидовНоменклатуры.Добавить(Перечисления.ВидыНоменклатуры.Материал);
	
	Если ПолучитьФункциональнуюОпциюФормы("ВыпускПродукции") Тогда
		
		МассивВидовНоменклатуры.Добавить(Перечисления.ВидыНоменклатуры.Продукция);		
	
	КонецЕсли;	
	
	Возврат МассивВидовНоменклатуры;

КонецФункции // ()

&НаКлиенте
Процедура ДобавитьРеализацию(Команда)
	
	ДанныеЗаполнения = Новый Структура("Организация, Контрагент, Договор, Менеджер, Склад");
	ЗаполнитьЗначенияСвойств(ДанныеЗаполнения, Объект);
	
	ПараметрыФормы = Новый Структура();
	ПараметрыФормы.Вставить("ЗначенияЗаполнения", ДанныеЗаполнения);
	
	ОткрытьФорму("Документ.РеализацияТоваровУслуг.ФормаОбъекта", ПараметрыФормы, ЭтаФорма);

КонецПроцедуры

&НаСервере
Процедура ОбработкаПроверкиЗаполненияНаСервере(Отказ, ПроверяемыеРеквизиты)
	
		
КонецПроцедуры














