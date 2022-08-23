import 'package:get/get.dart';

class PmsEditScreenController extends GetxController implements GetxService {
  List text = ["Shared Goals", "Finance", "Customer", "Process", "Best People"];
  List selected = [];
  RxBool isShow = false.obs;

  onChangeShow() {
    print("Call");
    if (isShow.value==true) {
      isShow.value = false;
    } else {
      isShow.value = true;
    }
  }
}
