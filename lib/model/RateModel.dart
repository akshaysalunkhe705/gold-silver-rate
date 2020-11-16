class RateModel {
  final double gold_sale_rate;
  final double gold_buy_rate;
  final double silver_sale_rate;
  final double silver_buy_rate;
  final double buy_gold_gst;
  final double buy_silver_gst;

  RateModel(Set set,
      {this.gold_sale_rate,
      this.gold_buy_rate,
      this.silver_sale_rate,
      this.silver_buy_rate,
      this.buy_gold_gst,
      this.buy_silver_gst});

  // factory RateModel.fromJson(Map<double, dynamic> json) {
  //   return RateModel(
  //     gold_sale_rate: json['sell_gold_rate'] as double,
  //     gold_buy_rate: json['buy_gold_rate'] as double,
  //     silver_sale_rate: json['sell_silver_rate'] as double,
  //     silver_buy_rate: json['buy_silver_rate'] as double,
  //     buy_gold_gst: json['buy_gold_gst'] as double,
  //     buy_silver_gst: json['buy_silver_gst'] as double,
  //   );
  // }
}
