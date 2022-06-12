import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'analysis_viewmodel.dart';

class AnalysisView extends StatelessWidget {
 const AnalysisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AnalysisViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
      appBar: AppBar(
        title: const Text('Analysis'),
      ),
      body: const Center(
        child: Text('Analysis'),
      ),
     ),
     viewModelBuilder: () => AnalysisViewModel(),
    );
  }
}