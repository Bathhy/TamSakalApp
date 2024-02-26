import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repo_uni.dart';

class SearchingController extends GetxController {
  List<RepoUni> unilist = RepoUni.repouniver;

  void search(String title) {
    final tmplist = RepoUni.repouniver.where((element) =>
        element.nameUni.toLowerCase().contains(title.toLowerCase()));
    unilist = tmplist.toList();
  }
}
