import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AppScreen extends StatelessWidget {
  static const id = 'AppScreen';
  static Route route() => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(opacity: animation, child: const AppScreen());
        },
        settings: const RouteSettings(
          name: AppScreen.id,
        ),
      );
  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = List.generate(40, (index) => index);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Installed Applications'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemCount: list.length,
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
          return Card(child: Text(index.toString()));
        },
      ),
    );
  }
}
