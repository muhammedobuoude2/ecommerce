import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeviewModel>(
      init: HomeviewModel(),
      builder: (controller) => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            activeIcon: const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text('Explore'),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SvgPicture.asset('assets/svg/Icon_Explore.svg'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text('Cart'),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SvgPicture.asset('assets/svg/Icon_Cart.svg'),
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text('User'),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SvgPicture.asset('assets/svg/Icon_User.svg'),
              ),
              label: ''),
        ],
        currentIndex: currentIndex,
        onTap: (index) => controller.changeselectValue(index),
        elevation: 0,
        selectedItemColor: ColorManager.instance.blackColor,
        backgroundColor: Colors.grey.shade50,
        unselectedItemColor: ColorManager.instance.primaryColor,
      ),
    );
  }
}
