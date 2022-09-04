import 'package:mumet/app/app.locator.dart';
import 'package:mumet/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EntrypointViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  
  void navigateToOutcome() {
    _navigationService.navigateTo(Routes.outcomeView);
  }

  void navigateToIncome() {
    _navigationService.navigateTo(Routes.incomeView);
  }

  void navigateToSaving() {
    _navigationService.navigateTo(Routes.savingView);
  }
}