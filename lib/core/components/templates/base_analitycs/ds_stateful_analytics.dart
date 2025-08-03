import 'package:flutter/material.dart';

abstract class StatefulAnalytics extends StatefulWidget {
  const StatefulAnalytics({super.key});

  @override
  _StatefulAnalyticsState createState() => _StatefulAnalyticsState();
}

class _StatefulAnalyticsState extends State<StatefulAnalytics> {
  final dynamic analytics;
  final String? analyticsPage;

  _StatefulAnalyticsState({this.analyticsPage, this.analytics}) {
    _configureAnalytics();
  }

  _configureAnalytics() {
    analytics.logEvent(name: analyticsPage!);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
