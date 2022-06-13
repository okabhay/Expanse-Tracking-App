import 'package:mumet/views/entrypoint.dart';
import 'package:mumet/views/starter/onboarding_view.dart';
import 'package:mumet/views/starter/starter_view.dart';
import 'package:mumet/views/transaction/details/transaction_details_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: StarterView),
    MaterialRoute(page: EntrypointView, initial: true),
    MaterialRoute(page: TransactionDetailsView)
  ],
  
  dependencies: [
    Singleton(classType: ThemeService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    Singleton(classType: FirebaseAuthenticationService),
  ],
)

class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}