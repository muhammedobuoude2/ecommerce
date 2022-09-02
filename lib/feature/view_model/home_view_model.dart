import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeviewModel extends GetxController {
  int _navigoterValue = 0;
  get navigoterValue => _navigoterValue;
  void changeselectValue(int selectedValue) {
    _navigoterValue = selectedValue;
    update();
  }
}
