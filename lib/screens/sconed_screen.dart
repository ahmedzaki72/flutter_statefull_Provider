import 'package:flutter/material.dart';
import 'package:flutter_app_statefull/counter_provider.dart';

class ScondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter InheritedWidget'),
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, StateSetter setState) {
            return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counting is ${provider.counter}', style: Theme.of(context).textTheme.display1,),
                IconButton(icon: Icon(Icons.add, size: 50,), onPressed: () {
                  setState((){
                    provider.counter++;
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
