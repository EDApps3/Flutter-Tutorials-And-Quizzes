import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

import '1_FlutterSyntaxe_CodeView_Run.dart';


void main() => runApp(FlutterSyntaxeCodeAndSourceView());

class FlutterSyntaxeCodeAndSourceView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:  WidgetWithCodeView(
        child:FlutterSyntaxeCodeView(),
        sourceFilePath:'lib/Codes_FrontEnd/50_Flutter_Syntaxe/1_FlutterSyntaxe_CodeView_Run.dart',
      )
    );
  }
}






