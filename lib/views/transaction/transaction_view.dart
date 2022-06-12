import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'transaction_viewmodel.dart';

class TransactionView extends StatelessWidget {
 const TransactionView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<TransactionViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: const Text('Transaction'),
      ),
      body: Center(
        child: Text('Transaction'),
      ),
     ),
     viewModelBuilder: () => TransactionViewModel(),
   );
 }
}