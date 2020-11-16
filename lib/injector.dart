import 'package:get_it/get_it.dart';

import 'package:get_it/get_it.dart';

import 'scoped_model/rate_scoped_model.dart';

GetIt locator = GetIt.instance;

setupInjector() {
  locator.registerFactory<RateScopedModel>(() => RateScopedModel());
}
