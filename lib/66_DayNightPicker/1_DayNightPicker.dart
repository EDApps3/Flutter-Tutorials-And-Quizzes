import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';

void main() => runApp(DayNightPicker());

class DayNightPicker extends StatefulWidget {
  @override
  _DayNightPickerState createState() => _DayNightPickerState();
}

class _DayNightPickerState extends State<DayNightPicker> {
  TimeOfDay _time = TimeOfDay.now();

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Time picker',
        home: Scaffold(
         appBar:AppBar(
           title:Text("Day Night Picker"),
         ),
         body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            Text(
              _time.format(context),
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 10),
            FlatButton(
              color: Theme.of(context).accentColor,
              onPressed: () {
                Navigator.of(context).push(
                  showPicker(
                    context: context,
                    value: _time,
                    onChange: onTimeChanged,
                    is24HrFormat: false,
                      moonAsset:Image.asset("assets/moon.png"),
                      sunAsset:Image.asset("assets/sun.png"),
                  ),
                );
              },
              child: Text(
                "Open time picker",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
     ),
    );
  }
}