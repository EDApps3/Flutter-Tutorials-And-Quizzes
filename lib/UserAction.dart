import 'Landing_Loading_Page_Component/Btn_Facebook.dart';
import 'Landing_Loading_Page_Component/Btn_Google.dart';
import 'Landing_Login_Page.dart';
import 'SettingPage.dart';

Future<void> logout() async {
              var dbApp = DBApp();
            App AS=new App(3,"Login","NoLoginFound");
            dbApp.update(AS);
            dbApp.getLogin();
            await googleSignIn.signOut();
            await facebookLogin.logOut();

            UserData US=new UserData("1",0,0,"John Doe","Images/LandingPage/Avatar.gif","-1","-1",1);
      
            await dbApp.updateUserData(US);
            await dbApp.getAvatarInfo();
}