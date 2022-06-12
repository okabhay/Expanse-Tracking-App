import 'package:flutter/material.dart';
import 'package:mumet/ui/components/list/goal_list.dart';
import 'package:mumet/ui/size/spacing.dart';

import '../../colors/colors.dart';

class FinanceGoalList extends StatelessWidget {
  const FinanceGoalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ListTile(
          title: Text('Financial Goals', style: theme.textTheme.titleMedium),
          trailing: Text('See all', style: theme.textTheme.titleSmall?.copyWith(color: XColors.PRIMARY)),
        ),
        SizedBox(
          height: 204,
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                XSpacing.horizontalRegular,
                GoalList(),
                GoalList(),
                GoalList(),
                GoalList(),
                GoalList(),
                XSpacing.horizontalRegular,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}