import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  //private constructor that can only be accessed here, behaves like a singleton
  DBProvider._();
  static final DBProvider db = DBProvider._();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;

    //instantiate when _database is null
    _database = await initDB();
    return _database;
  }

  initDB() async {
    //get the path to the document where the database is
    // stored on a particular platform
    String databasepath = join(await getDatabasesPath(), "PomoTimer.db");

    return await openDatabase(databasepath, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE users("
          "id INTEGER PRIMARY KEY,"
          "last_name NVARCHAR,"
          "other_names NVARCHAR,"
          "email NVARCHAR,"
          ")");
    });
  }
}
