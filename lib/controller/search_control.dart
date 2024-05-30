import 'package:get/get.dart';
import 'package:practiceloginlayout/Local_db/local_db.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';
import 'package:practiceloginlayout/store_key/storing_key_value.dart';

class SearchingController extends GetxController {
  // List<RepoUni> unilist = RepoUni.repouniver;
  RxList<RepoUni> unilist = <RepoUni>[].obs;
  RxList<RepoUni> searchhistorylist = <RepoUni>[].obs;
  final saveUniname = TamsakalDB.instance;

  RxList<RepoUni> get dataList => unilist;
  @override
  void onInit() {
    getSearchHistory(KeyNameuni);
    search("");
    super.onInit();
  }

  void search(String title) async {
    final tmpList = RepoUni.repouniver
        .where((element) =>
            element.nameUni.toLowerCase().contains(title.toLowerCase()))
        .toList();
    unilist.assignAll(tmpList);
  }

  void getSearchHistory(String key) async {
    final listsearchhist = await saveUniname.getSearch(key);
    print("Retrieved list: $listsearchhist");
    try {
      if (listsearchhist != null) {
        searchhistorylist.value = listsearchhist;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  // void saveSearchQuery(String query) async {
  //   searchhistorylist.add(RepoUni(nameUni: query));
  //   saveUniname.setSearchHistory(searchhistorylist);
  // }
}
