import 'package:get/get.dart';
import 'package:practiceloginlayout/RepoUni/repoCate_uni.dart';

class CategoryController extends GetxController {
  List<CateUni> Catelist = [];
  final currentidx = 0.obs;
  final Cateunilist = <CateUni>[].obs;

  void onInit() {
    Catelist = CateUni.categoryuni;
    super.onInit();
  }

  void filterByCategory(String catename) {
    final filterlist =
        Catelist.where((CateUni) => CateUni.category == catename);
    Cateunilist(filterlist.toList());
  }
}
