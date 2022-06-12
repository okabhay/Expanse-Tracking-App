import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BudgetWidget extends StatelessWidget {
  const BudgetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ListTile(
          title: Text('Financial Goals', style: theme.textTheme.titleMedium),
          trailing: Text('See all', style: theme.textTheme.titleSmall?.copyWith(color: XColors.PRIMARY)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: BoxDecoration(
            color: XColors.WHITE,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              SfRadialGauge(
                enableLoadingAnimation: true,
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showTicks: false,
                    radiusFactor: 0.8,
                    minimum: 0,
                    maximum: 100,
                    axisLineStyle: const AxisLineStyle(
                      cornerStyle: CornerStyle.bothCurve,
                      thickness: 18,
                      color: XColors.GREY_LIGHT,
                    ),
                    annotations: [
                      GaugeAnnotation(
                        angle: 90,
                        positionFactor: 0,
                        widget: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              child: const Icon(Icons.account_balance_wallet_rounded, color: XColors.WARNING, size: 24,),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: XColors.WARNING_LIGHT_3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Used', style: theme.textTheme.labelMedium),
                            ),
                            Text('999.999', style: theme.textTheme.headlineSmall?.copyWith(color: XColors.PRIMARY)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Of 1.500.000', style: theme.textTheme.labelSmall?.copyWith(color: XColors.TEXT, fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )),
                      GaugeAnnotation(
                        angle: 124,
                        positionFactor: 1.1,
                        widget:
                            Text('0 %', style: theme.textTheme.labelMedium?.copyWith(color: XColors.TEXT, fontWeight: FontWeight.bold)),
                      ),
                      GaugeAnnotation(
                        angle: 54,
                        positionFactor: 1.1,
                        widget: Text('100%',
                            style: theme.textTheme.labelMedium?.copyWith(color: XColors.TEXT, fontWeight: FontWeight.bold)),
                      ),
                    ],
                    pointers: const [
                      RangePointer(
                        value: 50,
                        width: 18,
                        cornerStyle: CornerStyle.bothCurve,
                        color: XColors.PRIMARY,
                      ),
                      MarkerPointer(
                        value: 49,
                        markerWidth: 18,
                        markerHeight: 18,
                        color: XColors.PRIMARY,
                        markerType: MarkerType.circle,
                        borderColor: XColors.WHITE,
                        borderWidth: 2,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                decoration: BoxDecoration(
                  color: XColors.PRIMARY_LIGHT_2,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Icon(Icons.info_rounded, color: XColors.PRIMARY),
                      XSpacing.horizontalRegular,
                      Flexible(child: Text('Allocate spending 25,000 per day from the remaining budget this month', style: theme.textTheme.labelMedium?.copyWith(color: XColors.PRIMARY))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}