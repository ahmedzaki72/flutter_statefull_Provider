import 'package:flutter/widgets.dart';

class CounterProvider extends InheritedWidget {
  /// here i will adding state i want to sharing to all widget
  int counter = 0;
  Widget child;

  CounterProvider({this.child});

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }

 static CounterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}