import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(GoogleNavBar());

class GoogleNavBar extends StatefulWidget {
  @override
  _GoogleNavBarState createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.home),
        Text('Home Page'),
      ],
    ),
    Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.person),
        Text('Profile Page '),
      ],
    ),
    Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.message),
        Text('Contact Page'),
      ],
    ),
    Row(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.help),
        Text('Help Page'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Google NavBar",
      home:Scaffold(
        appBar: AppBar(
          title: Text('Google NavBar'),
        ),
        body:
          Container(
            width:double.infinity,
            height:double.infinity,
            child:_widgetOptions.elementAt(_selectedIndex),
          ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: Colors.grey[800],
                  tabs: [
                    GButton(
                      icon:Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.person,
                      text: 'Profile',
                    ),
                    GButton(
                      icon: Icons.message,
                      text: 'Contact',
                    ),
                    GButton(
                      icon: Icons.help,
                      text: 'Help',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}