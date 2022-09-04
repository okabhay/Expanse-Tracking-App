import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:mumet/ui/components/home/fab.dart';

import 'home/home_view.dart';
import 'transaction/transaction_view.dart';
import 'budgeting/budgeting_view.dart';
import 'analysis/analysis_view.dart';

import 'entrypoint_viewmodel.dart';

class EntrypointView extends StatelessWidget {
  const EntrypointView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EntrypointViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: 'Transaction',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_rounded),
                label: 'Budgeting',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded),
                label: 'Analysis',
              ),
            ],
          ),
          body: PageTransitionSwitcher(
            reverse: model.reverse,
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
              );
            },
            child: getViewForIndex(model.currentIndex),
          ),
          floatingActionButton: FloatingAction(
            key: key,
            onOutcome: model.navigateToOutcome,
            onIncome: model.navigateToIncome,
            onSaving: model.navigateToSaving,
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
        viewModelBuilder: () => EntrypointViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const TransactionView();
      case 2:
        return const BudgetingView();
      case 3:
        return const AnalysisView();
      default:
        return const HomeView();
    }
  }
}