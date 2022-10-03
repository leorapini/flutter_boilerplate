import 'package:get_it/get_it.dart';

import 'infrastructure/http/http_adapter.dart';

final locator = GetIt.instance;

void init() {
  // BLOC

  // UseCase

  // Repository

  // DataSource

  // http
  locator.registerLazySingleton(() => HttpAdapter(locator()));
}
