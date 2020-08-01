import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';

void main() => runApp(FlutterSyntaxeCodeView());

class FlutterSyntaxeCodeView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Code View'),
        ),
        body:
        SourceCodeView(
          filePath:'lib/Codes_FrontEnd/50_Flutter_Syntaxe/1_FlutterSyntaxe_CodeView_Run.dart',
        ),
      ),
    );
  }
}






