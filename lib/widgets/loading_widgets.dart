import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;
  final bool show;

  const LoadingWidget({Key key, this.child, this.show = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.center,
        children: [
          show
              ? IgnorePointer(
                  ignoring: show ? false : true,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                    ),
                    child: CircularProgressIndicator(),
                  ),
                )
              : child
        ],
      ),
    );
  }
}
