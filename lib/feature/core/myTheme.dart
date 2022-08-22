// ignore_for_file: file_names

import 'package:ecommerce/feature/core/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTheme {
  MyTheme._();
  static final MyTheme instance = MyTheme._();

  ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      primaryColor: ColorManager.instance.primaryColor,
      backgroundColor: ColorManager.instance.backgroundColor,
      fontFamily: 'SFPRODISPLAY',
      scaffoldBackgroundColor: ColorManager.instance.backgroundColor,
      appBarTheme: AppBarTheme(
          backgroundColor:
              ColorManager.instance.transparentColor.withOpacity(0.1),
          elevation: 0,
          titleTextStyle: const TextStyle(
              color: Colors.black, fontFamily: 'SFPRODISPLAYHEAVYITALIC'),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: ColorManager.instance.blackColor,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.instance.whiteColor,
              systemNavigationBarColor: ColorManager.instance.primaryColor,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.dark)),
      // textTheme: AppTextTheme.textAppTheme,
      // buttons
      // inputDecorationTheme: TextFieldTheme.instance.inputDecorationTheme,
      // elevatedButtonTheme: AppButtonTheme.instance.elevatedButtonStyle,
      // outlinedButtonTheme: AppButtonTheme.instance.outlinedButtonStyle,
      // textButtonTheme: AppButtonTheme.instance.textButtonStyle,
      // textSelectionTheme: TextSelectionThemeData(
      //   cursorColor: ColorManager.instance.colorPrimary,
      // ),

      // inputDecorationTheme: InputDecorationTheme(
      //   hintStyle: TextManager.headline6.copyWith(
      //     fontWeight: FontWeight.w500,
      //     color: ColorManager.instance.white,
      //   ),
      //   labelStyle: AppTextTheme.textAppTheme.headline6?.copyWith(
      //       fontWeight: FontWeight.w500, color: ColorManager.instance.white),
      //   contentPadding: const EdgeInsets.symmetric(horizontal: 28),
      //   enabledBorder: BeveledInputBorder(
      //       borderSide: BorderSide(color: ColorManager.instance.white)),
      //   border: BeveledInputBorder(
      //       borderSide: BorderSide(color: ColorManager.instance.white)),
      //   errorBorder: BeveledInputBorder(
      //       borderSide: BorderSide(color: ColorManager.instance.error)),
      //   focusedBorder: BeveledInputBorder(
      //       borderSide: BorderSide(color: ColorManager.instance.white)),
      //   disabledBorder: BeveledInputBorder(
      //       borderSide: BorderSide(color: ColorManager.instance.white)),
      // ),

      // tabBarTheme: TabBarTheme(
      //   labelColor: ColorManager.instance.backgroundColor,
      //   unselectedLabelColor: ColorManager.instance.textColor,
      //   labelStyle: TextManager.headline5.copyWith(
      //     fontWeight: FontWeight.w600,
      //   ),
      //   unselectedLabelStyle: TextManager.headline5.copyWith(
      //       fontWeight: FontWeight.w600, color: ColorManager.instance.darkGrey),
      //   indicator: ShapeDecoration(
      //     color: ColorManager.instance.colorPrimary,
      //     shape: BeveledRectangleBorder(
      //       borderRadius: BorderRadius.circular(AppSize.r6),
      //     ),
      //   ),
      // ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   type: BottomNavigationBarType.fixed,
      //   unselectedItemColor: ColorManager.instance.white,
      //   backgroundColor: ColorManager.instance.darkGrey,
      //   selectedLabelStyle: TextManager.headline6.copyWith(
      //     color: ColorManager.instance.white,
      //   ),
      //   selectedItemColor: ColorManager.instance.black,
      //   unselectedLabelStyle: TextManager.headline6.copyWith(
      //     color: ColorManager.instance.white,
      //   ),
      // ),
      // popupMenuTheme: PopupMenuThemeData(
      //   shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(AppSize.r12)),
      // ),

      // checkboxTheme: CheckboxThemeData(
      //   fillColor: MaterialStateProperty.all(ColorManager.instance.white),
      //   checkColor: MaterialStateProperty.all(ColorManager.instance.white),
      //   side: BorderSide(
      //       color: ColorManager.instance.white,
      //       width: 0.5,
      //       style: BorderStyle.solid),
      //   shape: BeveledRectangleBorder(
      //     borderRadius: BorderRadius.circular(AppSize.r5),
      //     side: BorderSide(
      //         color: ColorManager.instance.white,
      //         width: 0.5,
      //         style: BorderStyle.solid),
      //   ),
      // ),

      // dialogBackgroundColor: ColorManager.instance.backgroundColor,

      // //fab
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorManager.instance.primaryColor),
      // progress indicator
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.instance.primaryColor),
      // Scaffold
    );
  }

// ThemeData get darkTheme {
//   return ThemeData(
//     primarySwatch: Colors.blue,
//     primaryColor: ColorManager.instance.colorPrimary,
//     backgroundColor: ColorManager.instance.black,
//     fontFamily: Constants.ge_ss_two_font,
//     scaffoldBackgroundColor: ColorManager.instance.backgroundColorDark,
//     appBarTheme: AppBarTheme(
//         backgroundColor: ColorManager.instance.black,
//         elevation: 0,
//         titleTextStyle: AppTextTheme.textAppThemeDark.headline4
//             ?.copyWith(fontWeight: FontWeight.w400),
//         centerTitle: true,
//         iconTheme: IconThemeData(
//           color: AppTextTheme.textAppThemeDark.headline1?.color,
//         ),
//         systemOverlayStyle: SystemUiOverlayStyle(
//             statusBarColor: ColorManager.instance.trnasparent,
//             systemNavigationBarColor: ColorManager.instance.colorPrimary,
//             statusBarBrightness: Brightness.light,
//             statusBarIconBrightness: Brightness.light,
//             systemNavigationBarIconBrightness: Brightness.light)),
//     textTheme: AppTextTheme.textAppThemeDark,
//     // buttons
//     // inputDecorationTheme: TextFieldTheme.instance.inputDecorationTheme,
//     elevatedButtonTheme: AppButtonTheme.instance.elevatedButtonStyle,
//     outlinedButtonTheme: AppButtonTheme.instance.outlinedButtonStyle,
//     textButtonTheme: AppButtonTheme.instance.textButtonStyle,

//     textSelectionTheme: TextSelectionThemeData(
//       cursorColor: ColorManager.instance.colorPrimary,
//     ),

//     inputDecorationTheme: InputDecorationTheme(
//       labelStyle: AppTextTheme.textAppTheme.headline5?.copyWith(
//         fontWeight: FontWeight.w500,
//       ),
//       border: InputBorder.none,
//       focusedBorder: InputBorder.none,
//       errorBorder: InputBorder.none,
//       enabledBorder: InputBorder.none,
//     ),

//     tabBarTheme: TabBarTheme(
//       labelColor: ColorManager.instance.colorPrimary,
//       unselectedLabelColor: ColorManager.instance.white,
//       labelStyle: TextManager.headline5.copyWith(
//           fontWeight: FontWeight.w600, color: ColorManager.instance.white),
//       unselectedLabelStyle: TextManager.headline5.copyWith(
//           fontWeight: FontWeight.w600, color: ColorManager.instance.white),
//       indicator: BoxDecoration(
//         color: ColorManager.instance.darkGrey,
//         borderRadius: BorderRadius.circular(AppSize.r20),
//       ),
//     ),

//     popupMenuTheme: PopupMenuThemeData(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppSize.r12)),
//     ),

//     checkboxTheme: CheckboxThemeData(
//       fillColor: MaterialStateProperty.all(ColorManager.instance.colorPrimary),
//       side: BorderSide(
//           color: ColorManager.instance.textBodyColorDark,
//           width: 1.5,
//           style: BorderStyle.solid),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(AppSize.r4),
//       ),
//     ),

//     dialogBackgroundColor: ColorManager.instance.backgroundColorDark,
//     //fab
//     floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: ColorManager.instance.colorPrimary),
//     // progress indicator
//     progressIndicatorTheme:
//         ProgressIndicatorThemeData(color: ColorManager.instance.colorPrimary),
//     // Scaffold
//   );
// }
}
