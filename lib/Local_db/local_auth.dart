import 'dart:convert';

import 'package:practiceloginlayout/model/model_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalAuthTS {
  static LocalAuthTS get instance => LocalAuthTS._internal();

  LocalAuthTS._internal();

  Future<SharedPreferences> _getSharePref() async =>
      await SharedPreferences.getInstance();

  Future<List<User>> getUser() async {
    final sp = await _getSharePref();
    final list = sp.getStringList("user");
    return list?.map((e) => User.fromJson(jsonDecode(e))).toList() ?? [];
  }

  Future<bool> putUserList(List<User> user) async {
    print("+++++++++++++++++++++++++++++++++++++++++++" + user.toString());
    final sp = await _getSharePref();
    final userlist = user.map((e) => jsonEncode(e.toJson())).toList();
    // covert from object to String
    return sp.setStringList("user", userlist);
  }

  // put only one user
  Future<bool> putUser(User userModel) async {
    final list = await getUser();
    list.add(userModel);
    return putUserList(list);
  }
}
