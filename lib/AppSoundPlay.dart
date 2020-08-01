import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tutorials_and_quizzes/SettingPage.dart';

typedef void OnError(Exception exception);

AudioPlayer advancedPlayer;
AudioCache audioCache;

void initPlayer(){
  advancedPlayer = new AudioPlayer();
  audioCache = new AudioCache(fixedPlayer: advancedPlayer);
}

void PlayTapSound(){
  if(SoundResult=="NotMuted"){
    audioCache.play('Music/Tap.mp3');
  }
}

void PlayLikeSound(){
  if(SoundResult=="NotMuted"){
    audioCache.play('Music/Like.mp3');
  }
}



/*

Future<List<GiftData>> getGiftssss() async {
    List ClaimIndex=new List();
    GiftDataLst= await getGift();
    print("Found "+GiftDataLst.length.toString() +"Gifts!");


    GiftClaimLst=await getGiftClaim();


    for(int j=0;j<GiftDataLst.length;j++) {
      GiftData GD=GiftDataLst[j];
      if(GD.GiftType=="Private"){
        if(GD.GiftTo != UID){
          ClaimIndex.add(GD);
        }
      }
    }

    for(int j=0;j<GiftDataLst.length;j++){
      GiftData GD=GiftDataLst[j];
      for(int i=0;i<GiftClaimLst.length;i++){
        GiftClaimData GCD=GiftClaimLst[i];
        if(GD.GiftID.toString()==GCD.GiftID.toString() ){
          if(GCD.UID.toString()==UID.toString() ){
            print("Found 1 Claimed Gift!");
            ClaimIndex.add(GD);
          }
        }
      }
    }

    if(ClaimIndex.length!=0){
      for(int i=0;i<ClaimIndex.length;i++){
        GiftDataLst.remove(ClaimIndex[i]);
      }
    }

    print("Gifts Left To Claim : "+GiftDataLst.length.toString() );

    if(GiftDataLst.length>0){
      setState(() {
        GiftResult="Here Is Your Gifts!";
      });
    }
    else{
      setState(() {
        GiftResult="No Gift Found!";
      });
    }





    return GiftDataLst; 
  }


*/