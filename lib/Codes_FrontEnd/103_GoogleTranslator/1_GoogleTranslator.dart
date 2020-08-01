import 'package:translator/translator.dart';
import 'package:flutter/material.dart';


void main()  {
  runApp(GoogleTranslatorRun());
}


class GoogleTranslatorRun extends StatefulWidget {
  @override
  GoogleTranslatorRunState createState() => new GoogleTranslatorRunState();
}

class GoogleTranslatorRunState extends State<GoogleTranslatorRun> {
  var TextToTranslateCtr = new TextEditingController();
  final translator = GoogleTranslator();
  String TranslatedResultTxt="Waiting...";
  bool Translating =false;
  List<String> LangList = ['English','Arabic','Chinese','Spanish','India'];
  String selectedLang="English";



  @override
  initState() {
    super.initState();
  }

  void Translate(String S,String To) async{
    setState(() {
      Translating=true;
    });

    if(To=="English"){
      await translator.translate(S, to: 'en').then((TranslatedResult){
       TranslatedResultTxt="Translate Result:"+TranslatedResult;
      });
    }
    else if(To=="Arabic"){
      await translator.translate(S, to: 'ar').then((TranslatedResult){
       TranslatedResultTxt="Translate Result:"+TranslatedResult;
      });
    }
    else if(To=="Chinese"){
      await translator.translate(S, to: 'zh-cn').then((TranslatedResult){
       TranslatedResultTxt="Translate Result:"+TranslatedResult;
      });
    }
    else if(To=="Spanish"){
      await translator.translate(S, to: 'es').then((TranslatedResult){
       TranslatedResultTxt="Translate Result:"+TranslatedResult;
      });
    } 
    else if(To=="India"){
      await translator.translate(S, to: 'bn').then((TranslatedResult){
       TranslatedResultTxt="Translate Result:"+TranslatedResult;
      });
    }
    setState(() {
      Translating=false;
    }); 
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text('Google Translator'),
        ),
        body:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(  
            children: <Widget>[
              Text("Text To Translate:"),
              TextField(controller:TextToTranslateCtr,),
              Text("Translate To:"),
              SizedBox(
                width:MediaQuery.of(context).size.width,
                child:DropdownButton(
                 hint: Text('English'),
                 value: selectedLang,
                 onChanged: (newValue) {
                   setState(() {
                     selectedLang = newValue;
                   });
                   Translate(TextToTranslateCtr.text,selectedLang);       
                 },
                 items: LangList.map((Show) {
                   return DropdownMenuItem(
                     child:Text(Show,style:TextStyle(color:Colors.black),),
                     value: Show,
                   );
                 }).toList(),  
               ),
              ),
              
               
               SizedBox(
                width:double.infinity,
                child:RaisedButton(
                  child:Text("Clear"),
                  onPressed:(){
                    setState(() {
                      TextToTranslateCtr.text="";
                    });
                  },
                ),
              ),
              (Translating==false)?Text(
                TranslatedResultTxt
              ):Center(child:CircularProgressIndicator(),), 


              
            ],
          ),
        )
      ),
    );
  }


}