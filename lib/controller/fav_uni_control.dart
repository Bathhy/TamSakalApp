import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practiceloginlayout/Local_db/local_db.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class favcontroller extends GetxController {
  final TamsakalDB _favdb = TamsakalDB.instance;
  List<RepoUni> Unidata = RepoUni.repouniver;
  final FavDb = <RepoUni>[].obs;
  var favstat = false;

  bool toggleFavourite(RepoUni item) {
    if (FavDb.contains(item)) {
      FavDb.remove(item);
    } else {
      FavDb.add(item);
    }
    return false;
  }

  void initIcons(RepoUni repos) async {
    final UnigetFav = await _favdb.getFav();
    final Index =
        UnigetFav.indexWhere((element) => element.nameUni == repos.nameUni) !=
            -1;
    favstat = Index;
    update();
  }

  void getAllfavUni() async {
    final favu = await _favdb.getFav();
    FavDb.value = favu;
  }

  void getfavUni(RepoUni unirepo) async {
    final favs = await _favdb.getFav();
    final favuni =
        favs.firstWhereOrNull((element) => element.nameUni == unirepo.nameUni);
    update();
  }

  void saveFavdb(RepoUni repodb) async {
    final getfav = await _favdb.getFav();
    final isexiing =
        getfav.indexWhere((element) => element.nameUni == repodb.nameUni);

    if (isexiing != -1) {
      deletebyIndex(repodb);
      favstat = false;
      update();

      getAllfavUni();
      Get.snackbar("Delete", "Delete favourite Successfully",
          backgroundColor: Colors.red[700],
          colorText: Colors.white,
          duration: Duration(seconds: 1));
    } else {
      final isSave = await _favdb.setFavUni(repodb);
      if (isSave) {
        favstat = isSave;
        update();
        print('--->> Save Fav <<-----');

        getAllfavUni();
        Get.snackbar(
          "Success",
          "Add to favourite Successfully",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 1),
        );
      }
    }
  }

  void deleteFav() {
    _favdb.removeByKey("Favlist");

    FavDb.clear();
  }

  void deletebyIndex(RepoUni deleteUni) async {
    final favRemoval = await _favdb.removefav(deleteUni);
    if (favRemoval) {
      print("---------xxxxDelete Succcesfull xx-----");
      FavDb.remove(deleteUni);
      update();
    }
  }
}
