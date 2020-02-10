import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
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
          body: Center(child: Text('Builder Demo')),

          // floatingActionButton: FloatingActionButton(onPressed: () {
          //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('SNAAAAACKS!')));
          //   })

          // floatingActionButton: SnackFab(),
          floatingActionButton: Builder(builder: (context) {
            return FloatingActionButton(onPressed: () {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('SNAAAAACKS!')));
            });
          }),
        )
      );
  }
}

class SnackFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('SNAAAAACKS!')));
      });
  }
}
