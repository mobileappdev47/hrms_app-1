import 'package:get/get.dart';

class PmsStatusController extends GetxController {

  RxList title=["George","Augustin Raj","Srini","Kanchana",].obs;
  RxList total=[100,40,50,30].obs;
  RxList completed=[0,10,9,4].obs;
  RxList inProgress=[0,0,0,5].obs;
  RxList overdue=[0,10,20,10].obs;
}