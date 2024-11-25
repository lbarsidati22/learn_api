extension AppString on String {
  String get baseUrl => 'https://reqres.in/api/$this';
  String get baseUrlWithUser => 'user$this'.baseUrl;
  String get baseUrlWithRegister => 'register$this'.baseUrl;
}
