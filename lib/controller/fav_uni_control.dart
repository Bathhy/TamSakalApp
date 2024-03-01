import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class favcontroller extends GetxController {
  List<RepoUni> Unidata = RepoUni.repouniver;
  final FavDb = <RepoUni>[].obs;
  var favstat = false.obs;

  bool toggleFavourite(RepoUni item) {
    if (FavDb.contains(item)) {
      FavDb.remove(item);
    } else {
      FavDb.add(item);
    }
    return false;
  }
}
