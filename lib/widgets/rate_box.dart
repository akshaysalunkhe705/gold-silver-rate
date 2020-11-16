import 'dart:ffi';

import 'package:flutter/material.dart';

class RateBox extends StatelessWidget {
  final String rate;
  RateBox(this.rate);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.rate),
    );
  }
}
