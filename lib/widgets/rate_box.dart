import 'dart:ffi';

import 'package:flutter/material.dart';

class RateBox extends StatelessWidget {
  final String title;
  final String rate;
  RateBox(this.title, this.rate);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(this.title),
          Text(this.rate),
        ],
      ),
    );
  }
}
