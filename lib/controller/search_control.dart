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

  // _dataList.isEmpty
        // ? Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(
        //           Icons.search_rounded,
        //           size: 150,
        //           color: Colors.grey[400],
        //         ),
        //         Text(
        //           'Search not Found',
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20),
        //         ),
        //         Text(
        //           'Try searching the item with \n a different keyword.',
        //           style: TextStyle(
        //               color: Colors.black54,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 15),
        //         ),
        //       ],
        //     ),
        //   )
}
