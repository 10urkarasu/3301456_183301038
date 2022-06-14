import 'package:haber_gundem/models/gundem_models/HaberlerModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  String _haberTable = "haber";
  String _columnKey = "key";
  String _columnUrl="url";
  String _columnDescription="description";
  String _columnImage="image";
  String _columnName="name";
  String _columnSource="source";
  String _columnDate="date";

  Future<Database?> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    String dbPath = join(await getDatabasesPath(), "haberler.db");
    var notesDb = await openDatabase(dbPath, version: 1, onCreate: createDb);
    return notesDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
        "Create table $_haberTable($_columnKey text, $_columnUrl text, $_columnDescription text, $_columnImage text, $_columnName text, $_columnSource text, $_columnDate text)");
  }
  Future<List<Result>> getAllHaber() async {
    Database? db = await this.database;
    var result = await db?.query("$_haberTable");
    return List.generate(result!.length, (i) {
      return Result.fromMap(result[i]);
    });
  }
  Future<int?> insert(Result resultModel) async {
    Database? db = await this.database;
    var result = await db?.insert("$_haberTable", resultModel.toMap());
    return result;
  }
  Future<int?> update(Result resultModel) async {
    Database? db = await this.database;
    var result = await db?.update("$_haberTable", resultModel.toMap(),
        where: "key=?", whereArgs: [resultModel.key]);
    return result;
  }
  Future<int?> delete(String key) async {
    Database? db = await this.database;
    //Daha sonra database'den ilgili id'deki değerleri delete etmesini istiyoruz.
    var result = await db?.rawDelete("delete from $_haberTable where key=$key");
    return result;
  }
}

