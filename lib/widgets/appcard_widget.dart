import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

import '../config/theme.dart';

class AppCard extends StatelessWidget {
  final ApplicationWithIcon application;
  const AppCard({Key? key, required this.application}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          splashColor: Colors.yellow,
          onDoubleTap: () => application.openApp(),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: LayoutBuilder(builder: (context, constraints) {
                  return SizedBox(
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.8,
                    child: Image.memory(
                      application.icon,
                      fit: BoxFit.fill,
                    ),
                  );
                }),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  application.appName,
                  style: AppTheme.appCardTitle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
