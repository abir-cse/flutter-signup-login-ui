import 'package:shared_preferences/shared_preferences.dart';

Future<String> saveValue(String myKey, String inputData) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(myKey, inputData);
  print('3. value saved -----------'+inputData);
  return 'success';
}