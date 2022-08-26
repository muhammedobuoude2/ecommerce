import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:ecommerce/feature/model/user_model.dart';
import 'package:ecommerce/test_Page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:logger/logger.dart';

class AuthviewModel extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late String email, password, name;

  // final Firebase
  Map<String, dynamic>? _userData;
  TextEditingController tecEmailSingup = TextEditingController();

  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecName = TextEditingController();

  AccessToken? _accessToken;

  loginWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;

      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(result.accessToken!.token);

      // Once signed in, return the UserCredential
      return FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential)
          .then((value) => (Get.offAll(() => const TestPage())));
    } else {}
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> login({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Get.offAll(() => const TestPage());
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        action: SnackBarAction(
          textColor: ColorManager.instance.whiteColor,
          disabledTextColor: ColorManager.instance.whiteColor,
          label: ('skip'),
          onPressed: () {
            // Code to execute.
          },
        ),
        content: Text(
          e.message ?? "",
          style: const TextStyle(fontSize: 13),
        ),
      ));
      Logger().e("Error $e");
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await auth
          .createUserWithEmailAndPassword(
              email: tecEmailSingup.text, password: tecPassword.text)
          .then((user) {
        Get.offAll(() => const TestPage());

        FirebaseFirestore.instance.collection('Users').add(
          {
            'userId': user.user?.uid,
            'email': user.user?.email,
            'name': tecName.text,
            'pic': ''
          },
        );
      }).catchError((e) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
          action: SnackBarAction(
            textColor: ColorManager.instance.whiteColor,
            disabledTextColor: ColorManager.instance.whiteColor,
            label: ('skip'),
            onPressed: () {
              // Code to execute.
            },
          ),
          content: Text(
            e.toString(),
            style: const TextStyle(fontSize: 13),
          ),
        ));
        Logger().e(e);
      });
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        action: SnackBarAction(
          textColor: ColorManager.instance.whiteColor,
          disabledTextColor: ColorManager.instance.whiteColor,
          label: ('skip'),
          onPressed: () {
            // Code to execute.
          },
        ),
        content: Text(
          e.toString(),
          style: const TextStyle(fontSize: 13),
        ),
      ));
      Logger().e(e);
    }

    // Once signed in, return the UserCredential
  }
}
