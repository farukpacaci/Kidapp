// ignore_for_file: avoid_print

import 'package:kid_game/components/services/send_mail.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper instance = DatabaseHelper._init();
  DatabaseHelper._init();

  Database? _database;

  final int _version = 1;
  final String _tableName = "SoccerTable";
  final String _columnId = "id";
  final String _columnLevel = "level";
  final String _columnSoccer = "soccer";

  final String _tableMailName = "MailTable";
  final String _columnMailId = "id";
  final String _columnMail = "mail";

  Future<Database> get database async {
    if (_database != null) _database!;
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "kid_database.db");
    _database = await openDatabase(
      path,
      version: _version,
      onCreate: (db, version) {
        db.execute('''CREATE TABLE $_tableName ( 
              $_columnId INTEGER PRIMARY KEY AUTOINCREMENT, 
              $_columnLevel INTEGER,
              $_columnSoccer INTEGER 
              ) ''');
        db.execute('''CREATE TABLE $_tableMailName ( 
              $_columnMailId INTEGER PRIMARY KEY AUTOINCREMENT, 
              $_columnMail TEXT
              ) ''');
      },
    );
    return _database!;
  }

  Future<void> insertMail(String mail) async {
    Database db = await DatabaseHelper.instance.database;
    List mailDatabaseList = await db.query(_tableMailName);

    if (mailDatabaseList.isEmpty) {
      await insertDataMail(mail);
    } else {
      await updateMail(mail);
      List dbListNew = await db.query(_tableMailName);
      print(dbListNew);
    }
  }

  updateMail(String mail) async {
    Database db = await DatabaseHelper.instance.database;
    await db.rawUpdate(
        'UPDATE $_tableMailName SET $_columnMail = ? WHERE $_columnMailId = ?',
        [mail, 1]);
  }

  Future<void> insertData() async {
    Database db = await DatabaseHelper.instance.database;
    await db.insert(_tableName, {_columnLevel: 0, _columnSoccer: 0});
    print("Data has been inserted!");
  }

  Future<void> insertDataMail(String mail) async {
    Database db = await DatabaseHelper.instance.database;
    await db.insert(_tableMailName, {_columnMail: mail});
    print("Data has been inserted!");
  }

  Future readLevel() async {
    Database db = await DatabaseHelper.instance.database;
    var level =
        await db.rawQuery('SELECT * FROM $_tableName WHERE $_columnId = 1');
    return level[0]['level'];
  }

  Future readAllData() async {
    Database db = await DatabaseHelper.instance.database;
    return await db.query(_tableName);
  }

  Future<String> readSoccer() async {
    Database db = await DatabaseHelper.instance.database;
    var soccer = await db.query(_tableName);
    if (soccer.isEmpty) {
      await DatabaseHelper.instance.insertData();
      var soccer = await db.query(_tableName);
      return soccer[0]["soccer"].toString();
    }
    return soccer[0]["soccer"].toString();
  }

  Future<void> updateCorrectSoccer(int currentSoccer) async {
    Database db = await DatabaseHelper.instance.database;
    await db.rawUpdate(
        'UPDATE $_tableName SET $_columnSoccer = ? WHERE $_columnId = ?',
        [(currentSoccer + 50), 1]);
    List mailDatabaseList = await db.query(_tableMailName);
    if (mailDatabaseList.isNotEmpty) {
      int newScore = currentSoccer + 50;
      if (newScore >= 100 && 500 > newScore && currentSoccer < 100) {
        SendEmail.instance.sendEmail("2");
      } else if (newScore >= 500 && 1000 > newScore && currentSoccer < 500) {
        SendEmail.instance.sendEmail("3");
      } else if (newScore >= 1000 && 2000 > newScore && currentSoccer < 1000) {
        SendEmail.instance.sendEmail("4");
      } else if (newScore >= 1000 && 2000 > newScore && currentSoccer < 1000) {
        SendEmail.instance.sendEmail("4");
      } else if (newScore >= 2000 && 4000 > newScore && currentSoccer < 2000) {
        SendEmail.instance.sendEmail("5");
      } else if (newScore >= 4000) {
        int cnt = 0;
        for (var i = 0; i < newScore; i + 4000) {
          cnt += 1;
          // 0 < 4000 -> cnt = 1
          // 2000 < 4000 -> cnt = 2
          // 4000 < 4000 -> cnt = 3
        }
        if (newScore >= (4000 + (cnt * 2000)) &&
            (4000 + ((cnt + 1) * 2000)) > newScore &&
            currentSoccer < (4000 + (cnt * 2000))) {
          SendEmail.instance.sendEmail("${5 + cnt}");
        }
      }
    }
  }

  updateFalseSoccer(int currentSoccer) async {
    Database db = await DatabaseHelper.instance.database;
    await db.rawUpdate(
        'UPDATE $_tableName SET $_columnSoccer = ? WHERE $_columnId = ?',
        [(currentSoccer - 50), 1]);
  }
}
