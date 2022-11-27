import 'package:ecosport_launcher/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

export 'theme.dart';

class Config {
  static Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppScreen.id:
        return AppScreen.route();
      case MainScreen.id:
        return MainScreen.route();
      default:
        return MaterialPageRoute(builder: (context) => const ErrorScreen());
    }
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Cannot load screen.'),
      ),
    );
  }
}
