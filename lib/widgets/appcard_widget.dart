import 'package:animate_do/animate_do.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

import '../config/theme.dart';

class AppCard extends StatelessWidget {
  final ApplicationWithIcon application;
  final int index;
  const AppCard({Key? key, required this.application, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delay = index / 2 * 10;
    if (index.isEven) {
      return FadeInLeftBig(
        delay: Duration(milliseconds: delay.toInt()),
        child: Card(
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
        ),
      );
    } else {
      return FadeInRightBig(
        delay: Duration(milliseconds: delay.toInt()),
        child: Card(
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
        ),
      );
    }
  }
}
