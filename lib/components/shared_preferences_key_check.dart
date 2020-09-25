import 'package:shared_preferences/shared_preferences.dart';

Future<String> ifKeyExists(String myKey) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool result = prefs.containsKey(myKey);
  if (result == true) {
    return 'success';
  } else {
    return 'failed';
  }
}
