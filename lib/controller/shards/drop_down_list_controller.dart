import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownListController extends GetxController {
  List<String> list = [];
  List<String> searchList = [];

  late TextEditingController searchController, textController;

  DropDownListController({required this.list}) {
    searchList = list;
  }

  search(String query) {
    if (query.trim() == '') {
      searchList = list;
      update();
      return;
    }
    searchList = [];
    for (String item in list) {
      if (item.toLowerCase().contains(query)) {
        searchList.add(item);
      }
    }
    update();
  }

  @override
  void onInit() {
    searchController = TextEditingController();
    textController = TextEditingController();
    textController.text = list[0];
    super.onInit();
  }

  @override
  void dispose() {
    searchController.dispose();
    textController.dispose();
    super.dispose();
  }
}
