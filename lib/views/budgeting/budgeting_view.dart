import 'package:flutter/material.dart';
import 'package:mumet/ui/core/button/primary_button.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';

import 'budgeting_viewmodel.dart';

class BudgetingView extends StatelessWidget {
 const BudgetingView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final theme = Theme.of(context);
   return ViewModelBuilder<BudgetingViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: const Text('Budgeting'),
      ),
      backgroundColor: theme.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Image.asset('assets/images/onboarding_1.png', fit: BoxFit.cover),
          ),
          XSpacing.verticalLarge,
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
            child: Text(' No budget has been created', style: theme.textTheme.titleLarge, textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Text('Create a budget to determine the allocation of money each month in certain categories', style: theme.textTheme.labelLarge, textAlign: TextAlign.center),
          ),
          XSpacing.verticalLarge,
          Center(
            child: SizedBox(
              width: 240,
              child: PrimaryButton(
                text: ' Create Budgeting', 
                leadingIcon: const Icon(Icons.add, color: Colors.white), 
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
     ),
     viewModelBuilder: () => BudgetingViewModel(),
   );
 }
}