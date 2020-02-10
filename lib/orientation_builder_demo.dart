import 'package:flutter/material.dart';

class OrientationBuilderDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey,
        alignment: AlignmentDirectional(0.0, 0.0),
        constraints: BoxConstraints(
          maxHeight: 300.0,
          maxWidth: 300.0,
          minWidth: 300.0,
          minHeight: 200.0
      ),
        // child: MediaQuery.of(context).orientation == Orientation.portrait ? greenSquare() : redSquare()
        child: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.portrait ? greenSquare() : redSquare();
        })
      ),
    );
  }

  Widget greenSquare() {
    return Container(
      color: Colors.green,
      constraints: BoxConstraints(
          maxHeight: 50.0,
          maxWidth: 50.0,
          minWidth: 50.0,
          minHeight: 50.0
      ),
    );
  }

  Widget redSquare() {
    return Container(
      color: Colors.red,
      constraints: BoxConstraints(
          maxHeight: 50.0,
          maxWidth: 50.0,
          minWidth: 50.0,
          minHeight: 50.0
      ),
    );
  }

}
