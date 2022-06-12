
import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/size/spacing.dart';

class GoalList extends StatelessWidget {
  const GoalList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Container(
        width: 240,
        height: 260,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/icon.png'),
                ),
                Text('20 days ago', style: theme.textTheme.labelMedium)
              ],
            ),
            XSpacing.verticalRegular,
            Text('Liburan ke Bali', style: theme.textTheme.titleSmall),
            XSpacing.verticalTiny,
            RichText(
              text: TextSpan(
                style: theme.textTheme.labelMedium,
                children: <TextSpan>[
                  TextSpan(text: '50%', style: theme.textTheme.labelMedium?.copyWith(color: XColors.PRIMARY, fontWeight: FontWeight.bold)),
                  const TextSpan(text: ' of accumulated savings'),
                ],
              ),
            ),
            XSpacing.verticalMedium,
            const SizedBox(
              height: 12,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.5,
                  valueColor: AlwaysStoppedAnimation<Color>(XColors.PRIMARY),
                  backgroundColor: Color(0xffD6D6D6),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.check_circle, color: XColors.SUCCESS, size: 16),
                XSpacing.horizontalSmall,
                Text('This plan on track', style: theme.textTheme.labelMedium),
              ],
            ),
          ],
        )
      ),
    );
  }
}