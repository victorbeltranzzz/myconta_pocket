import 'package:myconta_pocket/packages/migration.dart';
import 'package:sqflite/sqflite.dart';

class CreateAccountsTable implements Migration {
  @override
  int get version => 1;

  @override
  Future<void> up(DatabaseExecutor db) async {
    await db.execute('''
      CREATE TABLE accounts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL DEFAULT '',
        balance INTEGER NOT NULL DEFAULT 0,
        currency TEXT NOT NULL DEFAULT 'USD'
      );
    ''');
  }
}
