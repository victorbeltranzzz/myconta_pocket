class AppSetup {
  static final AppSetup _instance = AppService._internal();
  factory AppSetup() => _instance;
  AppSetup._internal();
}
