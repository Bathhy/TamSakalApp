import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class SearchingController extends GetxController {
  // List<RepoUni> unilist = RepoUni.repouniver;
  RxList<RepoUni> unilist = <RepoUni>[].obs;

  RxList<RepoUni> get dataList => unilist;

  void search(String title) {
    final tmpList = RepoUni.repouniver
        .where((element) =>
            element.nameUni.toLowerCase().contains(title.toLowerCase()))
        .toList();
    unilist.assignAll(tmpList);
  }

  @override
  void onInit() {
    search("");
    super.onInit();
  }
}
