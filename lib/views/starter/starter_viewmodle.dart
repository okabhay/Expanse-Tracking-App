import 'package:stacked/stacked.dart';
import 'package:mumet/app/app.router.dart';
import 'package:mumet/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class StarterViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToHome() {
    _navigationService.pushNamedAndRemoveUntil(Routes.entrypointView);
  }
}