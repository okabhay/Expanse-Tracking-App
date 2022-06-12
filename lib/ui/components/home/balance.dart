import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../colors/colors.dart';

class BalanceWidgets extends StatelessWidget {
  const BalanceWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = getThemeManager(context).isDarkMode;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 188,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isDarkMode ? XColors.DARK_LIGHT : XColors.PRIMARY,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Balance This Month', 
                    style: theme.textTheme.labelMedium?.copyWith(color: isDarkMode? XColors.TEXT_LIGHT_1 : XColors.PRIMARY_LIGHT_1)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                  child: Text('₹ 150000.00', style: theme.textTheme.headlineSmall?.copyWith(color: Colors.white),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isDarkMode ? XColors.DARK_LIGHT_2 : XColors.WHITE,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              child: const Icon(Icons.arrow_downward_rounded, color: XColors.SUCCESS, size: 20,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: XColors.SUCCESS_LIGHT_3,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Income', style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.2)),
                                Text('15000.00', style: theme.textTheme.titleSmall),
                            ],)
                          ],
                        ),
                      ),
                    ),
                    // draw a line
                    const VerticalDivider(width: 24),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 12.0, bottom: 12.0, right: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              child: const Icon(Icons.arrow_upward_rounded, color: XColors.DANGER, size: 20,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: XColors.DANGER_LIGHT_3,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Outcome', style: theme.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500, letterSpacing: 0.2)),
                                Text('2000.00', style: theme.textTheme.titleSmall),
                            ],)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}