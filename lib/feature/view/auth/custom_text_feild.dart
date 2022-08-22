import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        this.text,
        this.hintText,
        required this.onSave,
        required this.validetor})
      : super(key: key);
  final String? text;
  final String? hintText;
  final VoidCallback  onSave;
  final VoidCallback  validetor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 150,
        child: Column(
          children: [
            Text(text ?? '',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: ColorManager.instance.blackColor,
                    fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                    fontSize: 14)),
            const SizedBox(
              height: 3,
            ),
            TextFormField(
               decoration: InputDecoration(
                  fillColor: ColorManager.instance.whiteColor,
                  hintText: hintText,
                  hintStyle:
                      TextStyle(color: ColorManager.instance.graykColor)),
            )
          ],
        ));
  }
}
