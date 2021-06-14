import 'package:e_service_app/screens/viewmodel.dart';

class LoginViewmodel extends Viewmodel {
  bool isChecked = false;

  void setCheckedBox(bool isCheckedValue) {
    isChecked = isCheckedValue;
    notifyListeners();
  }
}
