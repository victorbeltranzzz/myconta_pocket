import 'package:myconta_pocket/database/database_helper.dart';
import 'package:sqflite/sql.dart';

abstract class Model {
  int? id;

  String get tableName;
  Map<String, dynamic> toMap({bool includePK = false});

  Future<void> save() async {
    final db = await DatabaseHelper().database;
    if (id == null) {
      id = await db.insert(
        tableName,
        toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } else {
      await db.update(tableName, toMap(), where: 'id = ?', whereArgs: [id]);
    }
  }

  Future<bool> delete() async {
    if (id == null) return false;

    final db = await DatabaseHelper().database;
    final affectedRows = await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (affectedRows > 0) {
      id = null;
      return true;
    }

    return false;
  }
}
