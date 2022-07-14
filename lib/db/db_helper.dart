import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DatabaseConnection {

  setDatabase() async {
    var dir = await getApplicationDocumentsDirectory();
    var path = join(dir.path, 'mesjid_app_db');
    var database = await openDatabase(path, version: 1, onCreate: (Database db, int version) async {

      try {
        await db.execute("CREATE TABLE penyumbang(id INTEGER PRIMARY KEY, nama TEXT, tanggal TEXT, jumlah INTEGER");
        await db.execute("CREATE TABLE pemasukan(id INTEGER PRIMARY KEY, tanggal TEXT  INTEGER FOREIGN KEY (tanggal) REFERENCES penyumbang (tanggal) ON DELETE NO ACTION ON UPDATE NO ACTION)");
        await db.execute("CREATE TABLE acara(id INTEGER PRIMARY KEY, saldoKasLalu TEXT, jumlahPemasukan TEXT, jumlahPengeluaran TEXT, saldoSaatIni TEXT, khatib TEXT, imam TEXT, muadzin TEXT");
      } catch (e) {
        print(e);
      }

    });

    return database;
  }

}