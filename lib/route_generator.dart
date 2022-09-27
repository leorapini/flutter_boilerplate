import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    return _errorRoute('root');
  }

  static Route<dynamic> _errorRoute(String origin) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Text('Navigation Error from $origin.'),
        ),
      );
    });
  }
}
