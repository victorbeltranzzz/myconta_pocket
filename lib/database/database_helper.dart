import 'package:myconta_pocket/database/migration_manager.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    const dbName = 'database.db';
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);
    const currentVersion = 1;

    return await openDatabase(
      path,
      version: currentVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
      onConfigure: _onConfigure,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    print('Creando base de datos version $version');
    await MigrationManager().upgrade(db, 0, version);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    print('Actualizando base de datos de version $oldVersion a $newVersion');
    await MigrationManager().upgrade(db, oldVersion, newVersion);
  }

  Future<void> _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }
}
