import 'package:flutter/material.dart';
import 'package:animator/animator.dart';
import '../Page_BackEnd.dart';
import '../SettingPage.dart';
import '../main.dart';
import 'package:flutter_tutorials_and_quizzes/custom_expansion_tile.dart' as custom;
import 'package:like_button/like_button.dart';
import 'package:flutter_tutorials_and_quizzes/SQLite/Show_Bookmarks_Contents.dart';
import '../Page_FrontEnd.dart';
import '../AppLang.dart';


typedef void OnError(Exception exception);

class CmpCustExpTile extends StatefulWidget {

  final Icon ExpIcon;
  final String ExpTitle,InQuizzRoute;
  final Color ExpBg,ExInsideBg;
  final double BordRadius;
  final int CardLength;
  final List CardsList;
  bool isBookmarked;
  int  ID;
  String Type;

  CmpCustExpTile({
    @required this.ExpIcon,
    @required this.ExpTitle,
    @required this.ExpBg,
    @required this.ExInsideBg,
    @required this.BordRadius,
    @required this.InQuizzRoute,
    @required this.CardLength,
    @required this.CardsList,
    @required this.isBookmarked,
    @required this.ID,
    @required this.Type,
  });

  _CmpCustExpTileState createState() => _CmpCustExpTileState();
}

class _CmpCustExpTileState extends State<CmpCustExpTile> {

  @override
  void initState(){
    super.initState();
    setState(() {
      
    });
  }



  Future<bool> onLikeButtonTapped(bool isLiked) async{
    setState(() {
      GettingBookmarkFrontEndContent=true;
    });
    App_BookmarksContent ABK;
    PlayLikeSound();

    if(isLiked){
       ABK   =new App_BookmarksContent(widget.ID  ,widget.ExpTitle     ,"NotBookmarked");
       widget.isBookmarked=false;
    }
    else{
       ABK   =new App_BookmarksContent(widget.ID  ,widget.ExpTitle     ,     "Bookmarked");   
       widget.isBookmarked=true;
    }

    if(widget.Type=="FrontEnd"){
      await DBBkContApp().updateBookmarkContent(ABK);
      await DBBkContApp().getContentBookmark();
    }

    if(widget.Type=="BackEnd"){
      await DBBkContApp().updateBookmarkContentBackend(ABK);
      await DBBkContApp().getContentBookmarkBackend();
    }


    GettingBookmarkFrontEndContent=false;
    GettingBookmarkBackEndContent=false;

    return !isLiked;
  }

  void PlayTapSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Tap.mp3');
    }
  }

  void PlayLikeSound() async{
    if(SoundResult=="NotMuted") {
      audioCache.play('Music/Like.mp3');
    }
  }

  bool _ETvalue = false;

  void _onETChanged(bool value) {
    setState (() {
      _ETvalue = value;

      if(_ETvalue==false){
        PlayTapSound();
      }
      else{
        PlayTapSound();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(widget.BordRadius),
      child:
      custom.ExpansionTile(
        onExpansionChanged:_onETChanged,
        leading:widget.ExpIcon,
        headerBackgroundColor:widget.ExpBg,
        iconColor: Colors.white,
        backgroundColor:widget.ExInsideBg,
        title:
        Container(
          child:
          Row(
            children: <Widget>[
              SizedBox(
                width:MediaQuery.of(context).size.width  - 192,
                child:
                Text (
                  widget.ExpTitle,
                  style: TextStyle(
                    fontSize:11.5,
                    color: Colors.white,
                    fontFamily: "PT Mono",
                  ),
                ),
              ),
              Animator(
                duration:Duration(milliseconds:1400),
                tween: Tween<double>(begin:0.5,end:1.0),
                curve: Curves.elasticOut,
                cycles:0,
                builder:(anim)=>Transform.scale(
                    scale: anim.value,
                    child:IconButton(
                      color:Colors.white,
                      icon:Icon(Icons.settings),
                      onPressed:(){

                        print("Bookmarked On Startup------>"+widget.isBookmarked.toString());

                        showModalBottomSheet(
                           shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(30.0),
                      topRight:Radius.circular(30.0),
                    ),
      ),
                context: context,
                builder:(BuildContext bc){
                  return ClipRRect(
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(30.0),
                      topRight:Radius.circular(30.0),
                    ),
                    child:Container(
                    color:ThemeAppBar,
                    width:MediaQuery.of(context).size.width,
                    height:260,
                    child:Column(
                    children: <Widget>[
                      ListTile(
                        leading:widget.ExpIcon,
                        title:Text (
                          widget.ExpTitle,
                  style: TextStyle(
                    fontSize:12.5,
                    color: Colors.white,
                    fontFamily: "PT Mono",
                  ),
                ),
                trailing:IconButton(
                  icon:Icon(Icons.close,color:Colors.white,),
                  onPressed:(){
                    Navigator.of(context).pop();
                  },
                  
                ),
                      ),
                      Divider(color:Colors.white,),

                      ListTile(
                        leading:Icon(Icons.settings,color:Colors.white,),
                        title:Text(QuizzTxtTrans,style:TextStyle(color:Colors.white),),
                        trailing:Container(
                          width:67,
                          height:31,
                          child: Animator(
                duration:Duration(milliseconds:1400),
                tween: Tween<double>(begin:0.5,end:1.0),
                curve: Curves.elasticOut,
                cycles:0,
                builder:(anim)=>Transform.scale(
                    scale: anim.value,
                    child: Image.asset(
                        "Images/Quizz.png",
                        width: 31,
                        height: 31,
                      ),
                      
                ),
              ),

                 
                        ),
                        onTap:(){
                          RandQuizz=false;
                        PlayTapSound();
                        Navigator.of(context).pushReplacementNamed(widget.InQuizzRoute);
                        },
                      ),
                     
                      Divider(color:Colors.white,),

                      
                      ListTile(
                        leading:Icon(Icons.settings,color:Colors.white,),
                        title:Text(BookmarkTxtTrans,style:TextStyle(color:Colors.white,),),
                        trailing:Container(
                          width:47,
                          height:41,
                          child:LikeButton(
                            isLiked:widget.isBookmarked,
                    size: 31.0,
                    circleColor:CircleColor(
                      start:Colors.red,
                      end:Colors.orange
                    ),

                    likeCountPadding: EdgeInsets.only(left: 15.0),
                    likeCountAnimationType:LikeCountAnimationType.all,
                    onTap: onLikeButtonTapped,
                  ),
                
                 
                        ),
                        onTap:(){
                          RandQuizz=false;
                        PlayTapSound();
                        Navigator.of(context).pushReplacementNamed(widget.InQuizzRoute);
                        },
                      ),

                                            Divider(color:Colors.white,),

                     



                      ],
                  ),
                    ),
                  );
               }
            );
          
                        

                      },
                    ),
                   
                      
                    
                ),
              ),

              
            ],
          ),
        ),
        children: <Widget>[

          for(var item in widget.CardsList)
            Container(child:item),

          SizedBox(height:10,)
        ],
      ),
    );
  }


}




            



                  
                