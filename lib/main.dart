import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight
  ]);
  runApp(App());
}

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Adaptive Layouts',
        theme: ThemeData(primarySwatch: Colors.blue),
 
        home: Scaffold(
          appBar: AppBar(title: Text('Adaptive Layouts')),
          body: LayoutBuilder(builder: layoutDecider)
          // body: Container(
          //   constraints: BoxConstraints(minWidth: 400, minHeight: 300, maxWidth: 400, maxHeight: 300),
          //   child: LayoutBuilder(builder: layoutDecider)
          // ),
          )
      );
  }
  
  Widget layoutDecider(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth < 500 ? VerticalLayout() : HorizontalLayout();

}

class VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.lightGreen);
  }
}

class HorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Container(color: Colors.lightGreen)),
        Expanded(child: Container(color: Colors.deepOrange))
      ]);
  }

}
