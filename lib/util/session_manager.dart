import 'package:shared_preferences/shared_preferences.dart';

/// Created by cett01 on 20.07.2020

class SessionManager {
  static final SessionManager instance = SessionManager._internal();

  factory SessionManager() {
    return instance;
  }

  SessionManager._internal();

  static const String KEY_AUTH = "personalId";
  static const String KEY_TOKEN = "userPassword";
  static const String IS_LOGIN = "IsLoggedIn";
  static const String USER_ID = "userID";
  static const String SCHOOL_ID = "schoolID";
  static const String CLASS_ID = "classID";
  static const String LANG_CODE = "langCode";
  static const String COUNTRY_CODE = "countryCode";
  static const String GOOGLE_ID = "googleId";
  static const String GOOGLE_NICKNAME = "googleNickname";
  static const String GOOGLE_PHOTO_URL = "googlePhotoUrl";

//set data into shared preferences like this
  Future<void> createLoginSession(String auth, String token, int userId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(IS_LOGIN, true);
    prefs.setString(KEY_AUTH, auth);
    prefs.setString(KEY_TOKEN, token);
    prefs.setInt(USER_ID, userId);
  }

  Future<void> createGoogleSignInSession(
      String id, String nickname, String photoUrl) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(GOOGLE_ID, id);
    prefs.setString(GOOGLE_NICKNAME, nickname);
    prefs.setString(GOOGLE_PHOTO_URL, photoUrl);
  }

  Future<void> createSchoolSet(int schoolId) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(SCHOOL_ID, schoolId);
  }

  Future<void> createclassSet(int classId) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt(CLASS_ID, classId);
  }

  Future<void> createLangSet(String langCode) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(LANG_CODE, langCode);
  }

  Future<void> createCountrySet(String langCode) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(COUNTRY_CODE, langCode);
  }

  Future<String> getUserToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(KEY_TOKEN) ?? null;
  }

  Future<String> getUserAuth() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    return pref.getString(KEY_AUTH) ?? null;
  }

  Future<bool> isLoggedIn() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(IS_LOGIN) ?? false;
  }

  Future<int> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    try {
      return pref.getInt(USER_ID) ?? -1;
    } on Exception {
      try {
        return int.parse(pref.getString(USER_ID) ?? "-1");
      } on FormatException {
        return -1;
      }
    }
  }

  Future<int> getSchoolId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    try {
      return pref.getInt(SCHOOL_ID) ?? -1;
    } on Exception {
      try {
        return int.parse(pref.getString(SCHOOL_ID) ?? "-1");
      } on FormatException {
        return -1;
      }
    }
  }

  Future<int> getClassId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    try {
      return pref.getInt(CLASS_ID) ?? -1;
    } on Exception {
      try {
        return int.parse(pref.getString(CLASS_ID) ?? "-1");
      } on FormatException {
        return -1;
      }
    }
  }

  Future<String> getLangCode() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(LANG_CODE) ?? "tr";
  }

  Future<String> getCountryCode() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(COUNTRY_CODE) ?? "TR";
  }
}
