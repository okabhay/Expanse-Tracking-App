import 'package:mumet/app/app.locator.dart';
import 'package:mumet/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToOnboarding() {
    _navigationService.navigateTo(Routes.onboardingView);
  }
}