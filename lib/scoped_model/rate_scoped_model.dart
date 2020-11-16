import 'dart:convert';
import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:goldsilverrate/enum/status_indicator.dart';
import 'base_model.dart';

class RateModel extends BaseModel {
  double gold_sale_rate,
      gold_buy_rate,
      silver_sale_rate,
      silver_buy_rate,
      buy_gold_gst,
      buy_silver_gst;

  Future fetchRates() async {
    setState(StatusIndicator.LOADING);
    Response response = await Dio().get(
        "https://nghosting.in/api/metal-rate/index.php?key=59e2c476668a834098fb7d17bf38345e");

    Map userMap = jsonDecode(response.data);
    print(userMap);
    setState(StatusIndicator.COMPLETE);
    notifyListeners();
  }
}
