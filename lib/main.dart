import 'package:flutter/material.dart';
import 'package:flutter_app_statefull/counter_provider.dart';
import 'package:flutter_app_statefull/screens/home_screens.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        title: 'stateFullBuilder',
        home: HomeScreen(),
      ),
    );
  }
}
