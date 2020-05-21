import 'dart:math';
import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';

import 'FlutterSyntaxeHighlighter.dart';

class EditedSourceCodeView extends StatefulWidget {
  final String filePath;

  const EditedSourceCodeView({
    Key key,
    @required this.filePath,
  }) : super(key: key);

  @override
  _SourceCodeViewState createState() {
    return _SourceCodeViewState();
  }
}

class _SourceCodeViewState extends State<EditedSourceCodeView> {
  double _textScaleFactor = 1.0;
  EditedSyntaxHighlighterStyle style =EditedSyntaxHighlighterStyle.lightThemeStyle();
  int _RadioThemeValue = 0;
  Color ContainerView=Colors.white;

  void _RadioThemeChange(int value) {
    setState(() {
      _RadioThemeValue = value;

      switch (_RadioThemeValue) {
        case 0:
          setState(() {
            style =EditedSyntaxHighlighterStyle.lightThemeStyle();
            ContainerView=Colors.white;
          });
          break;

        case 1:
          setState(() {
            style =EditedSyntaxHighlighterStyle.darkThemeStyle();
            ContainerView=Colors.black;
          });
          break;

      }
    });
  }



  Widget _getCodeView(String codeContent, BuildContext context) {
    codeContent = codeContent.replaceAll('\r\n', '\n');

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Theme : "),
            new Radio(
              value: 0,
              groupValue: _RadioThemeValue,
              onChanged: _RadioThemeChange,
            ),
            new Text(' Light'),
            new Radio(
              value: 1,
              groupValue: _RadioThemeValue,
              onChanged: _RadioThemeChange,
            ),
            new Text(' Dark'),
          ],
        ),
        Expanded(
          child:Container(
            color:ContainerView,
            width:double.infinity,
            height:double.infinity,
            child: Scrollbar(
                child: ListView(
                  scrollDirection:Axis.vertical,
                  children: <Widget>[
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:Row(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: <Widget>[


                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment:MainAxisAlignment.start,
                            children: <Widget>[
                              SelectableText.rich(
                                TextSpan(
                                  style: TextStyle(fontFamily: 'monospace', fontSize: 12.0)
                                      .apply(fontSizeFactor: this._textScaleFactor),
                                  children: <TextSpan>[
                                    DartSyntaxHighlighter(style).format(codeContent)
                                  ],
                                ),
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .apply(fontSizeFactor: this._textScaleFactor),
                              ),
                            ],
                          )


                        ],
                      ),
                    )
                  ],
                )
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _buildFloatingButtons() {
    return <Widget>[
      FloatingActionButton(
        backgroundColor:Colors.green,
        heroTag: null,
        child: Icon(Icons.zoom_out),
        tooltip: 'Zoom out',
        onPressed: () => setState(() {
          this._textScaleFactor = max(0.8, this._textScaleFactor - 0.1);
        }),
      ),
      FloatingActionButton(
        backgroundColor:Colors.green,
        heroTag: null,
        child: Icon(Icons.zoom_in),
        tooltip: 'Zoom in',
        onPressed: () => setState(() {
          this._textScaleFactor += 0.1;
        }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(widget.filePath) ??
          'Error loading source code from $this.filePath',
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.all(4.0),
              child: _getCodeView(snapshot.data, context),
            ),
            floatingActionButton: AnimatedFloatingActionButton(
              fabButtons: _buildFloatingButtons(),
              colorStartAnimation: Colors.teal,
              colorEndAnimation: Colors.red,
              animatedIconData: AnimatedIcons.menu_close,
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}