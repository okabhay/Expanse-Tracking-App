import 'package:flutter/material.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../colors/colors.dart';
import '../../size/spacing.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = getThemeManager(context).isDarkMode;

    return FloatingActionButton(
        backgroundColor: XColors.PRIMARY,
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            backgroundColor: isDarkMode ? XColors.DARK_LIGHT_1 : XColors.PRIMARY,
            builder: (BuildContext context) {
              return Container(
                height: 324,
                padding: const EdgeInsets.all(22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Create Transaction', style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
                    XSpacing.verticalMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TransactionItem(
                            text: 'Outcome',
                            icon: const Icon(Icons.arrow_upward_rounded, color: XColors.WHITE, size: 24), 
                            onTap: () {  }, 
                          )
                        ),
                        // draw a line
                        const VerticalDivider(width: 16,),
                        Expanded(
                          child: TransactionItem(
                            text: 'Income',
                            icon: const Icon(Icons.arrow_downward_rounded, color: XColors.WHITE, size: 24), 
                            onTap: () {  }, 
                          )
                        ),
                      ],
                    ),
                    XSpacing.verticalSmall,
                    TransactionItem(
                      text: 'Saving Money',
                      icon: const Icon(Icons.clean_hands, color: XColors.WHITE, size: 24), 
                      onTap: () {  }, 
                    ),
                    XSpacing.verticalMedium,
                    Center(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          getThemeManager(context).toggleDarkLightTheme();
                        },
                        child: const Icon(Icons.close_rounded, color: XColors.WHITE, size: 28),
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(16),
                        ),
                      ),
                    ),
                    XSpacing.verticalSmall,
                  ],
                ),
              );
            },
          );
        },
        tooltip: 'Create Transaction',
        child: const Icon(Icons.add_outlined, color: XColors.WHITE),
      );
  }
}

class TransactionItem extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Icon icon;
  const TransactionItem({Key? key, required this.onTap, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = getThemeManager(context).isDarkMode;
  
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isDarkMode? XColors.DARK_LIGHT_2 :XColors.PRIMARY_LIGHT,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              child: icon,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: isDarkMode? XColors.DARK_LIGHT_1 :XColors.PRIMARY,
              ),
            ),
            const SizedBox(width: 16),
            Text(text, style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}