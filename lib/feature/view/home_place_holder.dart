
import 'package:ecommerce/feature/view/widget/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_model/home_view_model.dart';

class HomePlaceHolder extends StatelessWidget {
  const HomePlaceHolder({Key? key}) : super(key: key);

  static final HomeviewModel homeviewModel = Get.find<HomeviewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: GetBuilder<HomeviewModel>(
      builder: (_) {
        return BottomNavigation();
      },
    ), body: GetBuilder<HomeviewModel>(
      builder: (_) {
        return homeviewModel.screens[homeviewModel.navigoterValue];
      },
    ));
  }
}
