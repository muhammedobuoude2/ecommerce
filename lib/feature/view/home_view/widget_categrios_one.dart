// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WidgetCategriosOne extends StatelessWidget {
  const WidgetCategriosOne(
      {Key? key,
      required this.onTap,
      required this.nameCategorise,
      required this.pathIcon})
      : super(key: key);

  final Function onTap;
  final String nameCategorise;
  final String pathIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorManager.instance.blackColor.withOpacity(0.03),
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                )
              ],
              shape: BoxShape.circle,
              color: ColorManager.instance.transparentColor.withOpacity(0.005)),
          child: Center(
            child: SvgPicture.network(pathIcon),
          ),
          // onTap: () {
          // Get.to(() => ProductCategorOneScreen(
          //   //     categoryId: model.id!));
          // },
          // colorsBorderSide: ColorManager.instance.whiteColor,
          // backgroundColor: ColorManager.instance.whiteColor,
          // countCategorise: snapshot.data!.docs.length,
          // nameCategorise: model.name ?? '',
          // pathIcon: model.image ?? '',
        ),
        const SizedBox(
          height: 13,
        ),
        Text(nameCategorise,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: ColorManager.instance.blackColor,
                fontSize: 12,
                fontFamily: 'SFPRODISPLAYMEDIUM'))
      ],
    ));
  }
}
