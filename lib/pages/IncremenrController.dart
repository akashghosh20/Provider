import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class IncrementController extends ChangeNotifier {
  int value = 0;
  increment() {
    value++;
    notifyListeners();
  }
}
