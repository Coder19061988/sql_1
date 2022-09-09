import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class NotesDBWorker{

  NotesDBWorker._();

  static final NotesDBWorker db = NotesDBWorker._();

  Database _db;

  Future get database async{
    if (_db == null){
      _db = await init();
    }
    return _db;
  }

  Future<Database> init()async{
    String path = join(await getDatabasesPath(), "notes.db");
    Database db = await openDatabase(path, version: 1, onOpen: (db){},
    onCreate: (Database inDB, int inVersion) async{
      await inDB.execute("CREATE TABLE IF NOT EXISTS notes("
      "id INTEGER PRIMERY KEY,"
      "title TEXT,"
      "content TEXT,"
      "color TEXT"
      ")"
      );
    });
    return db;
  }



}