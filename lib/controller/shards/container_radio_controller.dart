import 'package:get/get.dart';

class ContainerRadioController extends GetxController {
  RxInt currentSelected = 0.obs;

  onSelect(int value) {
    currentSelected(value);
  }
}
