// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// const myColor = const Color(0xff243656);

// ThemeData light = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: Colors.indigo,
//   accentColor: Color(0xFF0083CC),
//   scaffoldBackgroundColor: Color(0xffffffff),
// );

// ThemeData dark = ThemeData(
//   brightness: Brightness.dark,
//   primarySwatch: Colors.indigo,
//   accentColor: Color(0xFF0083CC),
// );

// class ThemeNotifier extends ChangeNotifier {
//   final String key = "theme";
  
//   late bool _darkTheme;
//   late SharedPreferences _pref;

//   bool get darkTheme => _darkTheme;

  

//   ThemeNotifier () {
//     _darkTheme = !true;
//     _loadFromPrefs();
//   }
  

//   toggleTheme() {
//     _darkTheme = !_darkTheme;
//     _saveToPrefs();
//     notifyListeners();
//   }

//   _initPrefs() async {
//     if (_pref == null) _pref = await SharedPreferences.getInstance();
//   }

//   _loadFromPrefs() async {
//     await _initPrefs();
//     _darkTheme = _pref.getBool(key) ?? true;
//     notifyListeners();
//   }

//   _saveToPrefs() async {
//     await _initPrefs();
//     _pref.setBool(key, _darkTheme);
//   }
// }
