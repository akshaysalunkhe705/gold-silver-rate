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
      builder: (context, child, model) => SafeArea(
        child: LoadingWidget(
          show: model.state == StatusIndicator.LOADING,
          child: Scaffold(
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Gold Rate"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Silver Rate"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
