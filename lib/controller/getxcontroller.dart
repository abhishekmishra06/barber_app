import 'package:get/get.dart';

class Getxcontroll extends GetxController {
  var pageIndex = 1.obs;

  void setPageIndex(int index) {
    pageIndex.value = index;
  }
}
