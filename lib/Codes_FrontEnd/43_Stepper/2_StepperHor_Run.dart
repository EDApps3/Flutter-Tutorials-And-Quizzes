import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StepperHorRun());
}

class StepperHorRun extends StatefulWidget {
  @override
  _StepperHorState createState() => new _StepperHorState();
}

class _StepperHorState extends State<StepperHorRun> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Horizontal Stepper',
      home: new Scaffold(
        appBar:AppBar(
            title: new Text('Horizontal Stepper')
        ),
        body:

         Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,

          onStepTapped:
              (int step) => setState(
                      () => _currentStep = step
              ),

          onStepContinue:
            _currentStep < 2 ? () => setState(
                    () => _currentStep += 1
            ) : null,

          onStepCancel:
            _currentStep > 0 ? () => setState(
                    () => _currentStep -= 1
            ) : null,

          steps: <Step>[
            Step(
              title:Text('Step 1'),
              content: new Text('This is the first step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: new Text('Step 2'),
              content: new Text('This is the second step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: new Text('Step 3'),
              content: new Text('This is the third step.'),
              isActive: _currentStep >= 0,
              state: _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
        ),
      ),

    );
  }
}







