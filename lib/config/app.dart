import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/home/home_view.dart';
import '../views/welcome/welcome_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: WelcomeView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
  ],
)
class AppSetup {}
