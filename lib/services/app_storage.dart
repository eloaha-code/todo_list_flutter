import 'package:shared_preferences/shared_preferences.dart';
import '../models/app.settings.dart';

class AppStorage {
  static const String _loggedInkey = 'isLoggedIn';
  static const String _usernameKey = 'username';
  static const String _passwordKey = 'password';
  static const String _darkMpdeKey = 'darkMode';
  static const String _confirmDeleteKey = 'confirmDelete';

  static const String defaultUserName = 'aluno';
  static const String defaultPassword = '1234';

  Future<void> ensureDefaltUser() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_usernameKey)){
      await prefs.setString(_passwordKey, defaultUserName);
    }

    if (!prefs.containsKey(_passwordKey)){
      await prefs.setString(_passwordKey, defaultPassword);
    }
  }

  Future<bool> loadIsLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_loggedInkey, value);
  }

  Future<bool> validateLogin(String username, String password) async {
    await ensureDefaltUser();
    final prefs = await SharedPreferences.getInstance();

    final sevedUsername = prefs.getString(_usernameKey) ?? defaultUserName;
    final savedPassword = prefs.getString(_passwordKey) ?? defaultPassword;

    return username == saveUsername
  }
}