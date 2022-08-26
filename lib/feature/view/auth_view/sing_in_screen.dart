import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/view/auth_view/sign_up_screen.dart';
import 'package:ecommerce/feature/view/widget/socialButton.dart';
import 'package:ecommerce/feature/view_model/auth_view_model.dart';
import 'package:ecommerce/test_Page.dart';
import 'package:ecommerce/utils/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static final AuthviewModel authViewModel =
      Get.put(AuthviewModel(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 180,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome,',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: ColorManager.instance.blackColor,
                                  fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                                  fontSize: 30),
                        ),
                        Text(
                          'Sign in to Continue',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(
                                  color: ColorManager.instance.graykColor,
                                  fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                                  fontSize: 15.5),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => Get.to(() => SingUpScreen()),
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: ColorManager.instance.primaryColor,
                            fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                            height: 1.6,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: ColorManager.instance.blackColor
                                .withOpacity(0.5),
                            fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                            fontSize: 14)),
                    TextFormField(
                      controller: authViewModel.tecEmail,
                      validator: (email) {
                        if (!AppUtils.instance
                            .isValidateEmail(email: email.toString())) {
                          return 'Retype the email';
                        }

                        return null;
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: ColorManager.instance.whiteColor,
                          hintText: 'iamdavid@gmail.com',
                          hintStyle: TextStyle(
                              color: ColorManager.instance.blackColor)),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    Text('Password',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: ColorManager.instance.blackColor
                                .withOpacity(0.5),
                            fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                            fontSize: 14)),
                    TextFormField(
                      controller: authViewModel.tecPassword,
                      validator: (password) {
                        if (!AppUtils.instance.isValidatePassword(
                            password: password.toString())) {
                          return 'Retype the password';
                        }

                        return null;
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: ColorManager.instance.whiteColor,
                          hintText: '••••••••••••',
                          hintStyle: TextStyle(
                              color: ColorManager.instance.blackColor)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Text(
                          'Forgot Password?',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  fontSize: 14,
                                  color: ColorManager.instance.blackColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              ColorManager.instance.primaryColor,
                            )),
                            onPressed: () {
                              if (_globalKey.currentState!.validate()) {
                                authViewModel.login(
                                    email: authViewModel.tecEmail.text,
                                    password: authViewModel.tecPassword.text);
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
                                        color:
                                            ColorManager.instance.whiteColor),
                              ),
                            ))),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        '-OR-',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SocialButton(
                        text: 'Sign In with Facebook',
                        pathIcon: 'assets/svg/Icon_Facebook.svg',
                        onTap: () async {
                          await authViewModel.loginWithFacebook().then(
                              (value) => {Get.offAll(() => const TestPage())});
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    SocialButton(
                        text: 'Sign In with Google',
                        pathIcon: 'assets/svg/Icon_Google.svg',
                        onTap: () async {
                          await authViewModel.signInWithGoogle().then(
                              (value) => {Get.offAll(() => const TestPage())});
                        })
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
