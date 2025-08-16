import 'package:flutter/material.dart';
import 'package:my_app/model/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  final CounterModel model = CounterModel(0);

  int get count => model.count;

  void increment() {
    model.count++;
    notifyListeners();
  }

  void decrement() {
    model.count--;
    notifyListeners();
  }

  // Nueva función para resetear el contador
  void reset() {
    model.count = 0;
    notifyListeners();
  }
}
