import 'package:flutter/material.dart';

import '../../colors/colors.dart';

class CashCardWidgets extends StatelessWidget {
  const CashCardWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          child: const Icon(Icons.account_balance_wallet_rounded, color: XColors.WARNING, size: 24,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: XColors.WARNING_LIGHT_3,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        title: Text('Cash Balance', style: theme.textTheme.labelMedium),
        subtitle: Text('₹ 20,000.000', style: theme.textTheme.titleMedium?.copyWith(height: 1.6)),
      ),
    );
  }
}