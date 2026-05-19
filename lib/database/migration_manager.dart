import 'package:myconta_pocket/database/migrations/create_accounts_table.dart';
import 'package:myconta_pocket/database/migrations/create_categories_table.dart';
import 'package:myconta_pocket/database/migrations/create_transactions_table.dart';
import 'package:myconta_pocket/packages/migration.dart';
import 'package:sqflite/sqflite.dart';

class MigrationManager {
  static final MigrationManager _instance = MigrationManager._internal();
  factory MigrationManager() => _instance;
  MigrationManager._internal();

  //Aquí van las migraciones
  final List<Migration> _migrations = [
    CreateAccountsTable(),
    CreateCategoriesTable(),
    CreateTransactionsTable(),
  ];

  Future<void> upgrade(Database db, int oldVersion, int newVersion) async {
    _migrations.sort((a, b) => a.version.compareTo(b.version));

    await db.transaction((txn) async {
      for (final migration in _migrations) {
        if (migration.version > oldVersion && migration.version <= newVersion) {
          print('Ejecutando migración version ${migration.version}');
          await migration.up(txn);
        }
      }
    });
  }
}
