import 'UserDataInfo.dart';

void GetLevelsXp(){

  if(AvatarXp>=0 && AvatarXp<100){
    XpMax=100;
    Lvl="1";
    XpPercVal=(AvatarXp*100)/10000;
  }
  else if(AvatarXp>=100 && AvatarXp<150){
    XpMax=150;
    Lvl="2";
    XpPercVal=(((AvatarXp-100)*150)/10000);
  }
  else if(AvatarXp>=150 && AvatarXp<200){
    XpMax=200;
    Lvl="3";
    XpPercVal=(((AvatarXp-150)*200)/10000);
  }
  else if(AvatarXp>=200 && AvatarXp<250){
    XpMax=250;
    Lvl="4";
    XpPercVal=(((AvatarXp-200)*250)/10000);
  }
  else if(AvatarXp>=250 && AvatarXp<300){
    XpMax=300;
    Lvl="5";
    XpPercVal=(((AvatarXp-250)*300)/15000);
  }
  else if(AvatarXp>=300 && AvatarXp<350){
    XpMax=350;
    Lvl="6";
    XpPercVal=(((AvatarXp-300)*350)/17500);
  }
  else if(AvatarXp>=350 && AvatarXp<400){
    XpMax=400;
    Lvl="7";
    XpPercVal=(((AvatarXp-350)*400)/20000);
  }
  else if(AvatarXp>=400 && AvatarXp<600){
    XpMax=600;
    Lvl="8";
    XpPercVal=(((AvatarXp-400)*600)/120000);
  }
  else if(AvatarXp>=600 && AvatarXp<900){
    XpMax=900;
    Lvl="9";
    XpPercVal=(((AvatarXp-600)*900)/270000);
  }
  else if(AvatarXp>=900 && AvatarXp<1500){
    XpMax=1500;
    Lvl="9";
    XpPercVal=(((AvatarXp-900)*1500)/900000);
  }
  else if(AvatarXp>=1500 && AvatarXp<4000){
    XpMax=4000;
    Lvl="10";
    XpPercVal=(((AvatarXp-1500)*4000)/10000000);
  }
  else if(AvatarXp>=4000 && AvatarXp<9000){
    XpMax=9000;
    Lvl="11";
    XpPercVal=(((AvatarXp-4000)*9000)/45000000);
  }
  else if(AvatarXp>=9000 && AvatarXp<18000){
    XpMax=18000;
    Lvl="12";
    XpPercVal=(((AvatarXp-9000)*18000)/162000000);
  }
  else if(AvatarXp>=18000 && AvatarXp<36000){
    XpMax=36000;
    Lvl="13";
    XpPercVal=(((AvatarXp-18000)*36000)/649000000);
  }
  else{
    Lvl="Max";
    XpMax=10000000;
  }

  

}