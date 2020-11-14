import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Layout<MetalRateModel>(
//       builder: (context, child, model) => Scaffold(
//         body: LoadingWidget(
//           show: model.state == StateIndicator.BUSY,
//           child: Center(
//             child: Text(model.state.toString()),
//           ),
//         ),
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String buy_gold_rate;
  String sell_gold_rate;
  String buy_silver_rate;
  String sell_silver_rate;
  String buy_gold_gst;
  String buy_silver_gst;
  Response res;
  List _rateList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _getRate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Rates"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Text("data"),
        ),
      ),
    );
  }
}
