
class DB{
  static DB _instance;
  static DB get getInstance{
    if (_instanse == null){
      _instance = DB._();
    }
  }

  ///////////////////////////////////////////////////////////////////
  // Приватный конструктор
  DB._(){

  }

}