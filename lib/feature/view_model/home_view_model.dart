import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/feature/view/cart_view/cart_view.dart';
import 'package:ecommerce/feature/view/home_view/home_view.dart';
import 'package:ecommerce/feature/view/profile_view/profile_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeviewModel extends GetxController {
  int _navigoterValue = 0;
  get navigoterValue => _navigoterValue;
  void changeselectValue(int selectedValue) {
    _navigoterValue = selectedValue;
    update();
  }

  List screens = [
    HomeView(),
    CartView(),
    ProfileView(),
  ];


  //get  stream product by category id  from firebase
  // Stream<List<Product>> getProductsByCategoryId(String categoryId) {
  //   return FirebaseFirestore.instance
  //       .collection('products')
  //       .where('categoryId', isEqualTo: categoryId)
  //       .snapshots()
  //       .map((snapshot) => snapshot.docs.map((doc) => Product.fromMap(doc.data())).toList());
  // }
  
}
