import 'package:get/get.dart';

class DashBoardController extends GetxController {
  int pageIndex = 0;

  // RxInt pageIndex = 0.obs;
  onTapBot(int index) {
    if (index == 2) {}
    if (index == 1) {}
    if (index == 3) {
      // Get.put(NotificationController());
    }
    pageIndex = index;

  }

  void onTapFlatButton() {
 print("onTap Flot");
    // Get.to(() => const NewOrReadScreen());
  }
}
