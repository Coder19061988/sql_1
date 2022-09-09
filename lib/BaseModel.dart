import "package:scoped_model/scoped_model.dart";

class BaseModel extends Model{

  int stackIndex = 0;   //кажется это индекс вкладки
  List entityList = []; //Список с данными на экране
  var entityBeingEdited;//Ссылка на объект который пользователь выберет для редактирования.
  String chosenDate;

  //////////////////////////////////////////////////////////////////////////////
  //УСТАНОВКА ДАТЫ ПОСЛЕ ВЫБОРА ПОЛЬЗОВАТЕЛЕМ В ФОРМЕ
  void setChoseDate(String inDate){
    chosenDate = inDate;
    notifyListeners();
  }


}