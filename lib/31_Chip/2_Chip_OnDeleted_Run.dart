import 'package:flutter/material.dart';


class Courses {
  final String name,Letter;

  const Courses(
      this.name,
      this.Letter
  );
}

void main() => runApp(ChipOnDel());


class ChipOnDel extends StatefulWidget {
  ChipOnDel({Key key}) : super(key: key);
  @override
  _ChipOnDelState createState() => _ChipOnDelState();
}

class _ChipOnDelState extends State<ChipOnDel> {

  final List<Courses> _CoursesList = <Courses>[
    const Courses('Flutter', 'F'),
    const Courses('Dart', 'D'),
  ];

  Iterable<Widget> get CoursesWidgets sync* {
    for (Courses Cr in _CoursesList) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          avatar:CircleAvatar(child: Text(Cr.Letter)),
          label: Text(Cr.name),
          onDeleted: () {
            setState(() {
              _CoursesList.removeWhere((Courses entry) {
                return entry.name == Cr.name;
              });
            });
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title:"Chip OnDeleted",
     home:Scaffold(
      appBar: AppBar(
        title:Text("Chip OnDeleted"),
      ),
      body:
      Center(
        child:
         Row(
          children:CoursesWidgets.toList(),
        ),
      ),
     ),
    );
  }
}





