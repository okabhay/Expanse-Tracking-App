import 'package:flutter/material.dart';

class BarChart extends StatefulWidget {
  const BarChart({ Key? key }) : super(key: key);

  // final double saving;
  // final double income;
  // final double outcome;

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Container(
                  width: 160,
                  height: 36,
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: LinearProgressIndicator(
                      value: 1,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Saving', style: theme.textTheme.labelMedium),
              ),
              Text("354.000", style: theme.textTheme.titleSmall!.copyWith(color: Colors.blue)),
            ],
          ),
          Column(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Container(
                  width: 200,
                  height: 36,
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: LinearProgressIndicator(
                      value: 1,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Income', style: theme.textTheme.labelMedium),
              ),
              Text("4.860.000", style: theme.textTheme.titleSmall!.copyWith(color: Colors.green)),
            ],
          ),
          Column(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: Container(
                  width: 140,
                  height: 36,
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: LinearProgressIndicator(
                      value: 1,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Outcome', style: theme.textTheme.labelMedium),
              ),
              Text("1.205.000", style: theme.textTheme.titleSmall!.copyWith(color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}