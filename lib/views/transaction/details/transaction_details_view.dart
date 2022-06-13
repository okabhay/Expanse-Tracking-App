import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/components/list/list.dart';
import 'package:mumet/ui/core/button/socandary_button.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';

import 'transaction_details_viewmodel.dart';

class TransactionDetailsView extends StatelessWidget {
 const TransactionDetailsView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final theme = Theme.of(context);
   return ViewModelBuilder<TransactionDetailsViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: const Text('Detail Transaction'),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: ListWidget(
            leading: 'assets/images/chart.png',
            title: 'Domino Pizza',
            subtitle: 'Eat & Drink',
            trailing: 'Edit',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XSpacing.verticalMedium,
              Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Text('Amount', style: theme.textTheme.labelLarge),
                    XSpacing.verticalTiny,
                    Text('-650.00', style: theme.textTheme.headlineSmall!.copyWith(color: XColors.DANGER)),
                  ],
                ),
              ),
              XSpacing.verticalMedium,
              Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text('From Money?', style: theme.textTheme.labelLarge),
                      trailing: Text('1200.00', style: theme.textTheme.titleSmall),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text('Transaction Date', style: theme.textTheme.labelLarge),
                      trailing: Text('20 Nov 2021', style: theme.textTheme.titleSmall),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text('Category', style: theme.textTheme.labelLarge),
                      trailing: Text('Eat & Drink', style: theme.textTheme.titleSmall),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text('Transaction Type', style: theme.textTheme.labelLarge),
                      trailing: Text('Outcome', style: theme.textTheme.titleSmall),
                    ),
                  ],
                ),
              ),
              XSpacing.verticalMedium,
              SecondaryButton(text: 'Delete Transaction', onPressed: (){})
            ],
          ),
        ),
      ),
     ),
     viewModelBuilder: () => TransactionDetailsViewModel(),
   );
 }
}