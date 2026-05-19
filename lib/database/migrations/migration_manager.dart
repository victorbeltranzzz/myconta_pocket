import 'package:myconta_pocket/packages/migration.dart';

class MigrationManager {
  static final MigrationManager _instance = MigrationManager._internal();
  factory MigrationManager() => _instance;

  late final List<Migration> migrations;

  MigrationManager._internal() {
    migrations = [
      Migration(
        query: '''
          CREATE TABLE IF NOT EXISTS accounts (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL UNIQUE,
            balance REAL,
            currency TEXT
          )
        ''',
      ),
    ];
  }
}
