import 'package:flutter/material.dart';
import 'package:goldsilverrate/enum/status_indicator.dart';
import 'package:goldsilverrate/views/base_view.dart';
import 'package:goldsilverrate/widgets/loading_widgets.dart';
import 'package:goldsilverrate/widgets/rate_box.dart';
import '../../scoped_model/rate_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RateModel>(
      builder: (context, child, model) => LoadingWidget(
        show: model.state == StatusIndicator.LOADING,
        child: Scaffold(
          body: Container(
            child: RateBox(10.3),
          ),
        ),
      ),
    );
  }
}

// gold_sale_rate,
// gold_buy_rate,
// silver_sale_rate,
// silver_buy_rate,
// buy_gold_gst,
// buy_silver_gst;
