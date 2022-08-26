import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/view_model/auth_view_model.dart';
import 'package:ecommerce/utils/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatelessWidget {
  SingUpScreen({Key? key}) : super(key: key);
  static final AuthviewModel authViewModel = Get.find();
  final GlobalKey<FormState> _globalKeyCreat = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: ColorManager.instance.transparentColor,
            leading: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: SvgPicture.asset('assets/svg/Shape.svg'))
              ],
            )),
        body: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: SingleChildScrollView(
                child: Form(
              key: _globalKeyCreat,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: ColorManager.instance.blackColor,
                        fontFamily: 'SFPRODISPLAYSEMIBOLDITALIC',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Name',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color:
                            ColorManager.instance.blackColor.withOpacity(0.5),
                        fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                        fontSize: 14),
                  ),
                  TextFormField(
                    controller: authViewModel.tecName,
                    validator: (name) {
                      if (!AppUtils.instance
                          .isValidateName(name: name.toString())) {
                        return 'Retype the name';
                      }

                      return null;
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: ColorManager.instance.whiteColor,
                        hintText: 'David Spade',
                        hintStyle:
                            TextStyle(color: ColorManager.instance.blackColor)),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color:
                            ColorManager.instance.blackColor.withOpacity(0.5),
                        fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                        fontSize: 14),
                  ),
                  TextFormField(
                    controller: authViewModel.tecEmailSingup,
                    validator: (email) {
                      if (!AppUtils.instance
                          .isValidateEmail(email: email.toString().trim())) {
                        return 'Retype the email';
                      }

                      return null;
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: ColorManager.instance.whiteColor,
                        hintText: 'iamdavid@gmail.com',
                        hintStyle:
                            TextStyle(color: ColorManager.instance.blackColor)),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Text('Password',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color:
                              ColorManager.instance.blackColor.withOpacity(0.5),
                          fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                          fontSize: 14)),
                  TextFormField(
                    controller: authViewModel.tecPassword,
                    validator: (password) {
                      if (!AppUtils.instance
                          .isValidatePassword(password: password.toString())) {
                        return 'Retype the password';
                      }

                      return null;
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: ColorManager.instance.whiteColor,
                        hintText: '••••••••••••',
                        hintStyle:
                            TextStyle(color: ColorManager.instance.blackColor)),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                      clipBehavior: Clip.hardEdge,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            ColorManager.instance.primaryColor,
                          )),
                          onPressed: () {
                            if (_globalKeyCreat.currentState!.validate()) {
                              authViewModel.createUserWithEmailAndPassword();
                            }
                          },
                          child: Center(
                            child: Text(
                              'SIGN IN',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'SFPRODISPLAYREGULAR',
                                      color: ColorManager.instance.whiteColor),
                            ),
                          ))),
                ],
              ),
            ))));
  }
}
