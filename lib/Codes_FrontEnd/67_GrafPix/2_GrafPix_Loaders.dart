import 'package:flutter/material.dart';
import 'package:grafpix/pixloaders/pix_loader.dart';


void main() => runApp(GrafPixLoaders());

class IconWithCode extends StatelessWidget {
  PixLoader PixLoaderWidget;
  String PixLoaderName;

  IconWithCode({
    @required this.PixLoaderWidget,
    @required this.PixLoaderName,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection:Axis.horizontal,
        child:Card(
          child:Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    PixLoaderWidget,
                    SizedBox(height:40),
                    Text("$PixLoaderName"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "void main() => runApp(GrafPixIcon());\n\n"
                        "class GrafPixIcon extends StatelessWidget {\n"
                        " @override\n"
                        " Widget build(BuildContext context) {\n"
                        "  return MaterialApp(\n"
                        "   title:'GrafPix Icons',\n"
                        "   debugShowCheckedModeBanner:false,\n"
                        "   home:Scaffold(\n"
                        "   appBar:AppBar(\n"
                        "    title:Text('Grafpix Loaders'),\n"
                        "   ),\n"
                        "   body:Center(\n"
                        "    child:\n"
                        "      $PixLoaderName \n"
                        "    ),\n"
                        "  ),\n"
                        " );\n"
                        " }\n"
                        "}\n"
                ),
              )

            ],
          ),
        )
    );
  }


}

class GrafPixLoaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"GrafPix Loaders",
      debugShowCheckedModeBanner:false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("GrafPix Loaders"),
          ),
          body:ListView(
            children: <Widget>[

              IconWithCode(
                PixLoaderWidget:PixLoader(loaderType:LoaderType.Flashing,faceColor:Colors.deepPurple),
                PixLoaderName:"\nPixLoader(\nloaderType:LoaderType.Flashing,\nfaceColor:Colors.deepPurple\n),\n",
              ),
              Divider(),

              IconWithCode(
                PixLoaderWidget:PixLoader(loaderType:LoaderType.Rocks,faceColor:Colors.red),
                PixLoaderName:"\nPixLoader(\nloaderType:LoaderType.Rocks,\nfaceColor:Colors.red\n),\n",
              ),
              Divider(),

              IconWithCode(
                PixLoaderWidget:PixLoader(loaderType:LoaderType.Spinner,faceColor:Colors.teal),
                PixLoaderName:"\nPixLoader(\nloaderType:LoaderType.Spinner,\nfaceColor:Colors.teal\n),\n",
              ),
              Divider(),




            ],
          )
      ),
    );
  }
}

