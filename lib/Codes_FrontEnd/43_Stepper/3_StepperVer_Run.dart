import 'package:flutter/material.dart';

void main() {
  runApp(StepperVerRun());
}

class StepperVerRun extends StatefulWidget {
  @override
  _StepperVerState createState() => new _StepperVerState();
}

class _StepperVerState extends State<StepperVerRun> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Vertical Stepper',
      home: new Scaffold(
        appBar:AppBar(
            title: new Text('Vertical Stepper')
        ),
        body:

        Stepper(
          type: StepperType.vertical,
          currentStep: _currentStep,
          onStepTapped: (int step) => setState(() => _currentStep = step),
          onStepContinue: _currentStep < 1 ? () => setState(() => _currentStep += 1) : null,
          onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
          steps: <Step>[
            Step(
              title:Text('Image 1'),
              content:
                Image.asset(
                  "Images/160x160_Flutter.png",
                  width:100,
                  height:100,
                ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: new Text('Image 2'),
              content:
               Image.asset(
                "Images/Dart_Logo.png",
                width:100,
                height:100,
               ),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),

    );
  }
}








