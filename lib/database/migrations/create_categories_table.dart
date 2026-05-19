import 'package:myconta_pocket/packages/migration.dart';
import 'package:sqflite/sqflite.dart';

class CreateCategoriesTable implements Migration {
  @override
  int get version => 1;

  @override
  Future<void> up(DatabaseExecutor db) async {
    await db.execute('''
      CREATE TABLE categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL UNIQUE,
        type TEXT NOT NULL
      );
    ''');
  }
}
