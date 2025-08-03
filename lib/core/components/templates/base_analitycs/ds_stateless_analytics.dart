import 'package:flutter/material.dart';

abstract class DSStatelessAnalytics extends StatelessWidget {
  final dynamic analytics;
  final String? analyticsPage;

  DSStatelessAnalytics({super.key, this.analyticsPage, this.analytics}) {
    _configureAnalytics();
  }

  _configureAnalytics() {
    analytics.logEvent(name: analyticsPage!);
  }
}
