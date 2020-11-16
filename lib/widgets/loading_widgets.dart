import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;
  final bool show;

  const LoadingWidget({Key key, this.child, this.show = false});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Material(
        child: Stack(children: <Widget>[
      child,
      IgnorePointer(
        child: Opacity(
            opacity: show ? 1.0 : 0.0,
            child: Container(
              width: screenSize.width,
              height: screenSize.height,
              alignment: Alignment.center,
              color: Color.fromARGB(100, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircularProgressIndicator(),
                  // Text(title,
                  //     style: TextStyle(
                  //         fontSize: 16.0,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white)),
                ],
              ),
            )),
      ),
    ]));
  }
}
