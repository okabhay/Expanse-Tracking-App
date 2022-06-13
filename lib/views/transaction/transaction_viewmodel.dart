import 'package:mumet/app/app.locator.dart';
import 'package:mumet/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TransactionViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final listData = [
    {'group': '21 Sept 2021', 'title': 'Dominos Pizza from Airport', 'category': 'Eat & Drink', 'amount': -650},
    {'group': '21 Sept 2021', 'title': 'Cold Drink with friends', 'category': 'Eat & Drink', 'amount': -260},
    {'group': '21 Sept 2021', 'title': 'Coffee with friends', 'category': 'Eat & Drink', 'amount': -350},
    { 'group': '21 Sept 2021', 'title': '1 Litter milk', 'category': 'Eat & Drink', 'amount': -60},
    {'group': '20 Sept 2021', 'title': 'Dominos Pizza from Airport', 'category': 'Eat & Drink', 'amount': -650},
    {'group': '20 Sept 2021', 'title': 'Cold Drink with friends', 'category': 'Eat & Drink', 'amount': -260},
    {'group': '20 Sept 2021', 'title': 'Coffee with friends', 'category': 'Eat & Drink', 'amount': -350},
    { 'group': '20 Sept 2021', 'title': '1 Litter milk', 'category': 'Eat & Drink', 'amount': -60},
  ];

  void onTap() {
    _navigationService.navigateTo(Routes.transactionDetailsView);
  }
}