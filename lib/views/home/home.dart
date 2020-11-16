import 'package:flutter/material.dart';
import 'package:goldsilverrate/enum/status_indicator.dart';
import 'package:goldsilverrate/views/base_view.dart';
import 'package:goldsilverrate/widgets/loading_widgets.dart';
import 'package:goldsilverrate/widgets/rate_box.dart';
import '../../scoped_model/rate_scoped_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RateScopedModel>(
      builder: (context, child, model) => SafeArea(
        child: LoadingWidget(
          show: model.state == StatusIndicator.LOADING,
          child: Scaffold(
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gold Rate"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RateBox(
                        "Buy Rate",
                        model.gold_buy_rate != null
                            ? model.gold_buy_rate
                            : "0.0",
                      ),
                      RateBox(
                        "Sale Rate",
                        model.gold_sale_rate != null
                            ? model.gold_sale_rate
                            : "0.0",
                      ),
                      RateBox(
                        "Buy Gst",
                        model.buy_gold_gst != null ? model.buy_gold_gst : "0.0",
                      ),
                    ],
                  ),
                  Container(height: 50.0),
                  Text("Silver Rate"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RateBox(
                        "Buy Rate",
                        model.silver_buy_rate != null
                            ? model.silver_buy_rate
                            : "0.0",
                      ),
                      RateBox(
                        "Sale Rate",
                        model.silver_sale_rate != null
                            ? model.silver_sale_rate
                            : "0.0",
                      ),
                      RateBox(
                        "Buy Gst",
                        model.buy_silver_gst != null
                            ? model.buy_silver_gst
                            : "0.0",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButton: FlatButton(
              child: Text("REFRESH"),
              onPressed: () async {
                model.fetchRates();
              },
            ),
          ),
        ),
      ),
    );
  }
}
