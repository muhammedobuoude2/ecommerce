import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  const BestSelling(
      {Key? key,
      required this.nameText,
      required this.bodyText,
      required this.pathImage,
      required this.price})
      : super(key: key);
  final String nameText;
  final String bodyText;
  final String pathImage;

  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 240,
          width: 160,
          child: Image.network(pathImage),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          nameText,
          style: Theme.of(context).textTheme.headline6?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'SFPRODISPLAYREGULAR'),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bodyText,
          style: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'SFPRODISPLAYREGULAR'),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '\$ $price',
          style: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: 16,
              color: ColorManager.instance.primaryColor,
              fontWeight: FontWeight.normal,
              fontFamily: 'SFPRODISPLAYREGULAR'),
        ),
      ],
    );
  }
}
