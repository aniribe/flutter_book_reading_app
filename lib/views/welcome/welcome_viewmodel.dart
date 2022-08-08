import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../config/app.locator.dart';
import '../../config/app.router.dart';

class WelcomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> redirectToHome() async =>
      await _navigationService.navigateTo(Routes.homeView);
}
