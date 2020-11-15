import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:scoped_model/scoped_model.dart';

class RateModel extends Model {
  bool isLoading;

  Float gold_sale_rate,
      gold_buy_rate,
      silver_sale_rate,
      silver_buy_rate,
      buy_gold_gst,
      buy_silver_gst;

  Float get goldSaleRate => gold_sale_rate;
  Float get goldBuyRate => gold_buy_rate;
  Float get silverSaleRate => silver_sale_rate;
  Float get silverBuyRate => silver_buy_rate;
  Float get buyGoldGST => buy_gold_gst;
  Float get buySilverGST => buy_silver_gst;

  void set setGoldSilverRate(value) => gold_sale_rate = value;
  void set setGoldBuyRate(value) => gold_buy_rate = value;
  void set setSilverSaleRate(value) => silver_sale_rate = value;
  void set setSilverBuyRate(value) => silver_buy_rate = value;
  void set setBuyGoldGST(value) => buy_gold_gst = value;
  void set setBuySilverGST(value) => buy_silver_gst = value;

  Future fetchRates() async {
    var response = await Dio().get(
        "http://nghosting.in/api/metal-rate/index.php?key=59e2c476668a834098fb7d17bf38345e");

    notifyListeners();
  }
}
