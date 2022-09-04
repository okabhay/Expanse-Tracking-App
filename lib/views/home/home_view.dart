import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/components/list/list.dart';
import 'package:mumet/ui/components/widgets.dart';
import 'package:mumet/ui/core/button/outline_button.dart';
import 'package:mumet/ui/core/button/primary_button.dart';
import 'package:mumet/ui/core/button/socandary_button.dart';
import 'package:mumet/ui/core/chart/bar_chart.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../ui/components/home/budget.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
 const HomeView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   final theme = Theme.of(context);
   return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              UserWelcome(),
              XSpacing.verticalMedium,
              BalanceWidgets(),
              XSpacing.verticalMedium,
              CashCardWidgets(),
              FinanceGoalList(),
              const BudgetWidget(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: PrimaryButton(text: 'Button', onPressed: model.navigateToOnboarding),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: PrimaryButton(text: 'Testing', onPressed: (){}, enabled: false, leadingIcon: const Icon(Icons.add, color: XColors.PRIMARY,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: SecondaryButton(text: 'Testing', onPressed: (){}, leadingIcon: const Icon(Icons.add, color: XColors.WHITE,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: SecondaryButton(text: 'Testing', onPressed: (){}, enabled: false, leadingIcon: const Icon(Icons.add, color: XColors.PRIMARY,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: MyOutlineButton(text: 'Testing', onPressed: (){}, leadingIcon: const Icon(Icons.add, color: XColors.TEXT,),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: MyOutlineButton(text: 'Testing', onPressed: (){}, enabled: false, leadingIcon: const Icon(Icons.add, color: XColors.PRIMARY,),),
              ),
              
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: ListWidget(title: 'Makan soto pak Sabar', leading: 'aa', subtitle: '03:35 am', trailing: '-1200.00'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: ListWidget(title: 'Eat & Drink', leading: 'aa', subtitle: '03:35 am'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: ListWidget(title: 'Eat & Drink', leading: 'aa'),
              ),
              
              XSpacing.verticalMedium,
              const Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: BarChart(),
              ),
            ],
          ),
        ),
      ),
    ),
     viewModelBuilder: () => HomeViewModel(),
   );
 }
}