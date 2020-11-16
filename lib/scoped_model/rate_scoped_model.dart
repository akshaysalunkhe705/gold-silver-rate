import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:goldsilverrate/enum/status_indicator.dart';
import 'package:goldsilverrate/model/RateModel.dart';
import 'base_scoped_model.dart';

class RateScopedModel extends BaseModel {
  String gold_sale_rate;
  String gold_buy_rate;
  String silver_sale_rate;
  String silver_buy_rate;
  String buy_gold_gst;
  String buy_silver_gst;

  Future fetchRates() async {
    setState(StatusIndicator.LOADING);
    Response response = await Dio().get(
        "https://nghosting.in/api/metal-rate/index.php?key=59e2c476668a834098fb7d17bf38345e");

    gold_buy_rate = response.data['sell_gold_rate'];
    gold_sale_rate = response.data['buy_gold_rate'];
    silver_sale_rate = response.data['sell_silver_rate'];
    silver_buy_rate = response.data['buy_silver_rate'];
    buy_gold_gst = response.data['buy_gold_gst'];
    buy_silver_gst = response.data['buy_silver_gst'];

    setState(StatusIndicator.COMPLETE);
    notifyListeners();
  }
}
