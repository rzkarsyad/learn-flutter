import 'package:get/get.dart';

class HomeController extends GetxController {
  var dataPantau = 0.obs; // reactive
  // int dataPantau = 0; //simple

  void tambahData() {
    dataPantau++;
  }

  void refreshTampilan() {
    update();
  }
}
