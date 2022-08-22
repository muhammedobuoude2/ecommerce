import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/view/widget/customElvatedButton.dart';
import 'package:ecommerce/feature/view/widget/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
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
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: ColorManager.instance.blackColor,
                            fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                            fontSize: 30),
                      ),
                      Text(
                        'Sign in to Continue',
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                            color: ColorManager.instance.graykColor,
                            fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                            fontSize: 15.5),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: ColorManager.instance.primaryColor,
                        fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                        height: 1.6,
                        fontSize: 18),
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
                          color:
                              ColorManager.instance.blackColor.withOpacity(0.5),
                          fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                          fontSize: 14)),
                  TextFormField(
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
                    obscureText: true,
                    obscuringCharacter: '•',
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        fillColor: ColorManager.instance.whiteColor,
                        hintText: '••••••••••••',
                        hintStyle:
                            TextStyle(color: ColorManager.instance.blackColor)),
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
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 14,
                            color: ColorManager.instance.blackColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElvatedButton(text: 'SIGN IN', onPressed: () {}),
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
                      onPressed: () {}),
                  const SizedBox(
                    height: 20,
                  ),
                  SocialButton(
                      text: 'Sign In with Google',
                      pathIcon: 'assets/svg/Icon_Google.svg',
                      onPressed: () {})
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
