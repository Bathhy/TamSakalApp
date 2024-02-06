import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class PageviewController extends GetxController {
  // RxList<RepoUni> unirepo = <RepoUni>[].obs;
  List<RepoUni> allList = [];
  void getItemList() {
    allList = RepoUni.repouniver;
  }
}
