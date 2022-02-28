import 'package:chat_bud/DbSqlifte/Data_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, "chatbud.db"),
      onCreate: (database, version) async {
        await database.execute("""
          CREATE TABLE Message (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            sId TEXT NOT NULL,
            sender TEXT NOT NULL,
            content TEXT NOT NULL,
            chat TEXT NOT NULL,
            createdAt DATETIME NOT NULL,
            updatedAt DATETIME,
            iV INTEGER
          )
        """);
      },
      version: 1,
    );
  }

  Future<bool> insertData(DataModel dataModel) async {
    final Database db = await initDB();
    db.insert("Message", dataModel.toMap());
    return true;
  }

  Future<List<DataModel>> getData() async {
    final Database db = await initDB();
    final List<Map<String, dynamic>> maps = await db.query("Message");
    return List.generate(maps.length, (i) {
      return DataModel(
        id: maps[i]['id'],
        sid: maps[i]['sId'],
        sender: maps[i]['sender'],
        content: maps[i]['content'],
        chat: maps[i]['chat'],
        createdAt: maps[i]['createdAt'],
        updatedAt: maps[i]['updatedAt'],
        iV: maps[i]['iV'],
      );
    });
  }
}
