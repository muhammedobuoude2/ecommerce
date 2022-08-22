// ignore_for_file: file_names

import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('data',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: ColorManager.instance.primaryColor,
                  fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                  fontSize: 20)),
          Text('data',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontFamily: 'SFPRODISPLAYMEDIUM', fontSize: 20)),
          Text('data',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 20)),
        ],
      )),
    );
  }
}
