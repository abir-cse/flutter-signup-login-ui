import 'package:shared_preferences/shared_preferences.dart';
Future<String> getValue(String myKey) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringValue = prefs.getString(myKey);
  print('5. Got the value -----------'+ stringValue);
  return stringValue;
}