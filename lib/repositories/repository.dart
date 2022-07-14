import 'package:mesjid_app/db/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class Repository {

  late DatabaseConnection _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;

  Future<Database> get database async {

    if(_database!=null) return _database!;
    _database = await _databaseConnection.setDatabase();

    return _database!;
  }

  dynamic insertData(var table, var data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  void getTables() async {
    
    var con = await database;

    (await con.query('sqlite_master', columns: ['type', 'name'])).forEach((row) {
      print(row.values);
    });

  }


}