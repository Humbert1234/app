import 'package:shared_preferences/shared_preferences.dart';
import '../JsonModels/users.dart';

class AuthService {
  static const String _userKey = 'logged_in_user';
  static final AuthService _instance = AuthService._internal();

  factory AuthService() {
    return _instance;
  }

  AuthService._internal();

  Users? _currentUser;

  Future<void> setLoggedInUser(Users user) async {
    _currentUser = user;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, user.usrName);
  }

  Future<void> logout() async {
    _currentUser = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }

  Future<bool> isLoggedIn() async {
    if (_currentUser != null) return true;

    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString(_userKey);
    return username != null;
  }

  Future<String?> getCurrentUsername() async {
    if (_currentUser != null) return _currentUser!.usrName;

    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userKey);
  }
}
