import 'package:get_it/get_it.dart';
import 'package:promptivity/shared/theme/theme.aio.service.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerSingleton<ThemeService>(ThemeService());
}
