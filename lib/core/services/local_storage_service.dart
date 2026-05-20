import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/authentication/data/models/user_model.dart';

@lazySingleton
class LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  static const _tokenKey = 'access_token';
  static const _userKey = 'user_data';
  static const _langKey = 'app_language';

  Future<void> saveToken(String token) async {
    await _prefs.setString(_tokenKey, token);
  }

  String? getToken() => _prefs.getString(_tokenKey);

  Future<void> saveUser(UserModel user) async {
    await _prefs.setString(_userKey, jsonEncode(user.toJson()));
  }

  UserModel? getUser() {
    final userStr = _prefs.getString(_userKey);
    if (userStr == null) return null;
    return UserModel.fromJson(jsonDecode(userStr));
  }

  Future<void> clear() async {
    await _prefs.clear();
  }

  Future<void> saveLanguage(String lang) async {
    await _prefs.setString(_langKey, lang);
  }

  String getLanguage() => _prefs.getString(_langKey) ?? 'ar';
}
