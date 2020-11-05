import 'package:flutter/material.dart';
import 'package:flutter_app_statefull/screens/sconed_screen.dart';

class HomeScreen extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter InheritedWidget'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ScondScreen(),
                  ),
                );
              }),
        ],
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counting is $counter',
                  style: Theme.of(context).textTheme.display1,
                ),
                IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 50,
                    ),
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    }),
              ],
            );
          },
        ),
      ),
    );
  }
}
