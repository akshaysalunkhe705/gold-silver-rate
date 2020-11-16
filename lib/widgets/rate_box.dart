import 'dart:ffi';

import 'package:flutter/material.dart';

class RateBox extends StatelessWidget {
  final String title;
  final String rate;
  RateBox(this.title, this.rate);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(
            this.title,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Text(
            this.rate,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
