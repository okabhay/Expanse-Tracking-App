// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/entrypoint.dart';
import '../views/starter/onboarding_view.dart';
import '../views/starter/starter_view.dart';
import '../views/transaction/details/transaction_details_view.dart';
import '../views/transaction/forms/income/income_view.dart';
import '../views/transaction/forms/outcome/outcome_view.dart';
import '../views/transaction/forms/saving/saving_view.dart';

class Routes {
  static const String onboardingView = '/onboarding-view';
  static const String starterView = '/starter-view';
  static const String entrypointView = '/';
  static const String transactionDetailsView = '/transaction-details-view';
  static const String incomeView = '/income-view';
  static const String outcomeView = '/outcome-view';
  static const String savingView = '/saving-view';
  static const all = <String>{
    onboardingView,
    starterView,
    entrypointView,
    transactionDetailsView,
    incomeView,
    outcomeView,
    savingView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.starterView, page: StarterView),
    RouteDef(Routes.entrypointView, page: EntrypointView),
    RouteDef(Routes.transactionDetailsView, page: TransactionDetailsView),
    RouteDef(Routes.incomeView, page: IncomeView),
    RouteDef(Routes.outcomeView, page: OutcomeView),
    RouteDef(Routes.savingView, page: SavingView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    OnboardingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OnboardingView(),
        settings: data,
      );
    },
    StarterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StarterView(),
        settings: data,
      );
    },
    EntrypointView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const EntrypointView(),
        settings: data,
      );
    },
    TransactionDetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TransactionDetailsView(),
        settings: data,
      );
    },
    IncomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const IncomeView(),
        settings: data,
      );
    },
    OutcomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const OutcomeView(),
        settings: data,
      );
    },
    SavingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SavingView(),
        settings: data,
      );
    },
  };
}
