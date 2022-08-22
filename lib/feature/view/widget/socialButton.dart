import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {Key? key,
      required this.text,
      required this.pathIcon,
      required this.onPressed})
      : super(key: key);

  final String text;
  final String pathIcon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: ColorManager.instance.borderColor),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {
          onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(pathIcon),
                const SizedBox(
                  width: 55,
                ),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.black, fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
