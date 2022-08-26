// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../core/color_manger.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);


  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              ColorManager.instance.primaryColor,
            )),
            onPressed: onPressed() ,
            child: Center(
              child: Text(
                text,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SFPRODISPLAYREGULAR',
                    color: ColorManager.instance.whiteColor),
              ),
            )));
  }
}

// {
             
