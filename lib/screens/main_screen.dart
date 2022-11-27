import 'package:ecosport_launcher/config/config.dart';
import 'package:ecosport_launcher/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'screens.dart';

class MainScreen extends StatelessWidget {
  static const id = 'MainScreen';
  static Route route() => PageRouteBuilder(
        settings: const RouteSettings(
          name: MainScreen.id,
        ),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(opacity: animation, child: const MainScreen());
        },
      );
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppScreen.id),
              child: AppTheme.wallpaper(),
            ),
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 4, top: 2, bottom: 2, right: 4),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final width = constraints.maxWidth * 0.49;
                    final height = constraints.maxHeight * 0.15;
                    final size = Size(width, height);
                    return Column(
                      children: [
                        TimeWeather(size: size),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
