class Directory{

  String _name;
  static int age=12;

  Directory(name):_name = name {
    print(_name);
  }

  void _sayName() => print(_name);

  void sayName2() => print(_name);

 String get getName{
   print("GETER:"+_name);
   return _name;
 }
}