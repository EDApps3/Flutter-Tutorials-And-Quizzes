import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Example03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('staggeredGridView.count'),
      ),
      body: new StaggeredGridView.count(
        primary: false,
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: const <Widget>[
          const Text('1'),
          const Text('2'),
          const Text('3'),
          const Text('4'),
          const Text('5'),
          const Text('6'),
          const Text('7'),
          const Text('8'),
        ],
        staggeredTiles: const <StaggeredTile>[
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 1),
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 1),
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 1),
          const StaggeredTile.count(2, 2),
          const StaggeredTile.count(2, 1),
        ],
      ),
    );
  }
}