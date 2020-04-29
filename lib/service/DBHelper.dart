import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

final String tableName = 'lotto';

class DBHelper {
  DBHelper._();

  static final DBHelper db = DBHelper._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'superAwesomeDb.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            ''' CREATE TABLE $tableName id INTEGER PRIMARY KEY, todo TEXT, type TEXT, complete BIT ''');
      },
    );
  }
}
