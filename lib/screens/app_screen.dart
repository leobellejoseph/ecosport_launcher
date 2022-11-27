import 'package:device_apps/device_apps.dart';
import 'package:ecosport_launcher/widgets/appcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppScreen extends StatelessWidget {
  static const id = 'AppScreen';
  static Route route() => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(opacity: animation, child: AppScreen());
        },
        settings: const RouteSettings(
          name: AppScreen.id,
        ),
      );

  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Installed Applications'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FutureBuilder(
        future: DeviceApps.getInstalledApplications(
            onlyAppsWithLaunchIntent: true,
            includeAppIcons: true,
            includeSystemApps: true),
        builder: (context, snapshot) {
          final packageInfo = context.read<PackageInfo>();
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              if (snapshot.data != null) {
                final list = snapshot.requireData ?? [];
                final apps = list
                    .where((app) => app.appName != packageInfo.appName)
                    .toList();
                return GridView.builder(
                  itemCount: apps.length,
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      QuiltedGridTile(2, 2),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 1),
                      QuiltedGridTile(1, 2),
                    ],
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final Application appInfo = apps[index];
                    return Card(
                        child: appInfo is ApplicationWithIcon
                            ? AppCard(application: appInfo)
                            : Text(appInfo.appName ?? 'No App Name'));
                  },
                );
              }
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.yellow,
              ),
            );
          }
          return const Center(child: Text('No Data'));
        },
      ),
    );
  }
}
