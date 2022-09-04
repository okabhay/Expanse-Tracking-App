import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/components/list/list.dart';
import 'package:mumet/ui/core/chart/bar_chart.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';

import 'transaction_viewmodel.dart';

class TransactionView extends StatelessWidget {
 const TransactionView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final theme = Theme.of(context);
   return ViewModelBuilder<TransactionViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: const Text('Transaction'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: theme.backgroundColor,
              child: Column(
                children: [
                  XSpacing.verticalMedium,
                  BarChart(),
                  XSpacing.verticalMedium,
                  // create search text field with Search transaction label
                  Container(
                    height: 52,
                    margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0, bottom: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Search transaction',
                        labelStyle: theme.textTheme.labelLarge,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: XColors.GREY)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            XSpacing.verticalMedium,
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: GroupedListView<dynamic, String>(
                shrinkWrap: true,
                elements: model.listData,
                groupBy: (element) => element['group'],
                padding: EdgeInsets.only(bottom: 8.0),
                groupSeparatorBuilder: (String groupValue) => ListTile(
                  title: Text(groupValue, style: theme.textTheme.labelMedium),
                ),
                itemBuilder: (context, element) => Material(
                  color: theme.backgroundColor,
                  child: ListWidget(
                    onTap: model.onTap,
                    leading: 'aaa',
                    title: element['title'],
                    subtitle: element['category'],
                    trailing: element['amount'].toString(),
                  ),
                ),
              ),
            ),
            XSpacing.verticalMedium,
          ],
        ),
      ),
     ),
     viewModelBuilder: () => TransactionViewModel(),
   );
 }
}