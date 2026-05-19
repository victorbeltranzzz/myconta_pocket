import 'package:myconta_pocket/database/database_helper.dart';

class AppSetup {
  static final AppSetup _instance = AppSetup._internal();
  factory AppSetup() => _instance;
  AppSetup._internal();

  static Future<void> init() async {
    DatabaseHelper().database;
  }
}
