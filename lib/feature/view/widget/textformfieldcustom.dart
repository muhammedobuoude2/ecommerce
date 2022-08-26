import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.validator,
      required this.text})
      : super(key: key);
  final String hintText;
  final Function validator;
  final TextEditingController controller;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: ColorManager.instance.blackColor.withOpacity(0.5),
                fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                fontSize: 14)),
        TextFormField(
          controller: controller,
          validator: validator(),
          cursorColor: Colors.black,
          decoration: InputDecoration(
              fillColor: ColorManager.instance.whiteColor,
              hintText: hintText,
              hintStyle: TextStyle(color: ColorManager.instance.blackColor)),
        ),
      ],
    );
  }
}
