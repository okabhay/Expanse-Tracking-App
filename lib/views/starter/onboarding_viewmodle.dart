import 'package:mumet/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mumet/app/app.locator.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  
  void onGetStarted() {
    _navigationService.pushNamedAndRemoveUntil(Routes.starterView);
  }
}