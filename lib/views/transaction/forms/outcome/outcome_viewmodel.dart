import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:mumet/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OutcomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final formKey = GlobalKey<FormBuilderState>();
}