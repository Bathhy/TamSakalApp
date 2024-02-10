import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repoCate_uni.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class PageviewController extends GetxController {
  // RxList<RepoUni> unirepo = <RepoUni>[].obs;
  List<RepoUni> allList = [];
  List<CateUni> CategoryUniList = [];

  void getCategory() {
    CategoryUniList = CateUni.categoryuni;
  }
  void getItemList() {
    allList = RepoUni.repouniver;
  }
}
