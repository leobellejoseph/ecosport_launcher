import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final ApplicationWithIcon application;
  const AppCard({Key? key, required this.application}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        splashColor: Colors.yellow,
        onTap: () => application.openApp(),
        child: SizedBox(
          child: Stack(
            children: [
              Image.memory(application.icon, fit: BoxFit.fill),
              Align(
                alignment: Alignment.topCenter,
                child: Text(application.appName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
