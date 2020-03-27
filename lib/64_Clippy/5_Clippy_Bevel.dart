import 'package:clippy_flutter/arc.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ClippyBevel());
}

class Category {
  final IconData iconData;
  final Color color;
  final String title;

  const Category(this.iconData, this.color, this.title);
}

class ClippyBevel extends StatelessWidget {

  static const List<Category> categories = [
    Category(Icons.directions_run, Colors.pink, 'Sports'),
    Category(Icons.music_note, Colors.blue, 'Music'),
    Category(Icons.edit, Colors.green, 'Poetry'),
    Category(Icons.map, Colors.orange, 'Travel'),
    Category(Icons.add, Colors.cyanAccent, 'Math'),
    Category(Icons.photo_camera, Colors.indigoAccent, 'Photography'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Clippy Bevel",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
            title: Text('Clippy Bevel')
        ),
        body: GridView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            Category category = categories[index];
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Bevel(
                cutLength: 30.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(category.iconData),
                      SizedBox(height: 8.0),
                      Text(
                        category.title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  color: category.color,
                ),
              ),
            );
          },
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
    );
  }
}


