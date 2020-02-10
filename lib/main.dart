import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'orientation_builder_demo.dart';

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
          body: OrientationBuilderDemo()
        )
      );
  }
  
}
