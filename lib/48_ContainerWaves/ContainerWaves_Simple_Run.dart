import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() => runApp(ContainerWaveRun());


class ContainerWaveRun extends StatefulWidget {

  @override
  _ContainerWaveState createState() => _ContainerWaveState();
}

class _ContainerWaveState extends State<ContainerWaveRun> {

  MaskFilter _blur;
  final List<MaskFilter> _blurs = [
    null,
    MaskFilter.blur(BlurStyle.normal, 10.0),
    MaskFilter.blur(BlurStyle.inner, 10.0),
    MaskFilter.blur(BlurStyle.outer, 10.0),
    MaskFilter.blur(BlurStyle.solid, 16.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Wave"),
      ),
      body:
         Container(
        height:230,
        width: double.infinity,
        child: Card(
          color:Colors.deepPurpleAccent,
          child:
              Column(
                children: <Widget>[
                  SizedBox(height:20,),
                  Text("Waves!"),
                  Expanded(
                    child:WaveWidget(
                      config:CustomConfig(
                        gradients: [
                          [Colors.red, Color(0xEEF44336)],
                          [Colors.red[800], Color(0x77E57373)],
                          [Colors.orange, Color(0x66FF9800)],
                          [Colors.yellow, Color(0x55FFEB3B)]
                        ],
                        durations: [35000, 19440, 10800, 6000],
                        heightPercentages: [0.20, 0.23, 0.25, 0.30],

                        blur: _blur,

                        gradientBegin: Alignment.bottomLeft,

                        gradientEnd: Alignment.topRight,
                      ),

                      backgroundColor:Colors.deepPurpleAccent,
                      size: Size(double.infinity, double.infinity),
                      waveAmplitude: 0,

                    ),
                  )

                ],
              )


        ),
      ),
    );
  }
}