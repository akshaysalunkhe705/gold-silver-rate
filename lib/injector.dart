import 'package:get_it/get_it.dart';

import 'package:get_it/get_it.dart';

import 'scoped_model/RateModel.dart';

GetIt locator = GetIt.instance;

setupInjector() {
  locator.registerFactory<RateModel>(() => RateModel());
}
