import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  RxBool value = false.obs;

  changeValue(bool value) {
    this.value(value);
  }
}
