import 'package:flutter/cupertino.dart';

import '../../../Shared Preferance/shared_pref.dart';

class IntrodactionPageRepository extends ChangeNotifier {
  final SharedPref _sharedPref = SharedPref();
  bool showIntrodactionPageBefor = false;
  String error = '';
  void showIntrodactionPage() {
    _sharedPref.addNewState(keys.showIntrodactionBefor.name, true);
    getStateShowIntrodactionPage();
    notifyListeners();
  }

  void getStateShowIntrodactionPage() {
    _sharedPref.getState(keys.showIntrodactionBefor.name).then((value) {
      if (value is bool?) {
        showIntrodactionPageBefor = value ?? false;
        error = '';

        notifyListeners();
      } else {
        error = 'some thing happend';
        showIntrodactionPageBefor = false;
        notifyListeners();
      }
    }).catchError((onError) {
      error = onError.toString();
      notifyListeners();
    });
  }
}
