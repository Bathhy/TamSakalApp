import 'package:practiceloginlayout/RepoUni/repo_uni.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TamsakalDB {
  static TamsakalDB get instance => TamsakalDB._internal();

  TamsakalDB._internal();
  Future<SharedPreferences> _getSharePref() async =>
      await SharedPreferences.getInstance();
// save fav
  Future<bool> setFavUni(RepoUni repo) async {
    final favUni = await getFav();
    final isexit =
        favUni.indexWhere((element) => element.nameUni == repo.nameUni);

    if (isexit == -1) {
      favUni.add(repo);
      return savedataFav(favUni);
    }
    return false;
  }

  Future<bool> savedataFav(List<RepoUni> Unimodel) async {
    final pref = await _getSharePref();
    final List<String> tmplist =
        Unimodel.map((e) => jsonEncode(e.toMap())).toList().cast<String>();

    return pref.setStringList("Favlist", tmplist);
  }

  Future<List<RepoUni>> getFav() async {
    final pref = await _getSharePref();
    List<String> rawlist = pref.getStringList("Favlist") ?? [];
    return rawlist.map((e) => RepoUni.fromJson(jsonDecode(e))).toList();
  }

  Future<bool> removeByKey(String key) async {
    final pref = await _getSharePref();
    return pref.remove(key);
  }

  Future<bool> removefav(RepoUni unidel) async {
    final alluni = await getFav();
    alluni.removeWhere((element) => element.nameUni == unidel.nameUni);
    return savedataFav(alluni);
  }
}
