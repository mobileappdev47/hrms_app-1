import 'package:get/get.dart';

class PmsEditScreenController extends GetxController implements GetxService {
  List text = ["Shared Goals", "Finance", "Customer", "Process", "Best People"];
  RxList selected = [].obs;
  RxBool isShow = false.obs;

  onChangeShow() {

    if (isShow.value==true) {
      isShow.value = false;
    } else {
      isShow.value = true;
    }
  }
  onAddRemoveText(String text){
    if(selected.contains(text)){
      selected.remove(text);
    }else{
      selected.add(text);
    }
  }
}
