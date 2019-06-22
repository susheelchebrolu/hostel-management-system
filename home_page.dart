import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:hostel_app/login_page.dart';
import 'package:hostel_app/post_a_problem.dart';
import 'Myproblems.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final carousel=new Container(
      padding: EdgeInsets.all(15.0),
      height: 200.0,
      width: 370.0,
      child: new Carousel(
        images: [
          AssetImage('assets/post.jpg'),
          AssetImage('assets/un.jpg'),
          AssetImage('assets/resol.jpg'),
        ],
        showIndicator: false,
        borderRadius: false,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.7,
      ),
    );
    final image1=new Container(
      width: 370.0,
      height: 200.0,
      child:Padding(
        padding:EdgeInsets.all(10.0),
        child: Image.asset('assets/post.jpg'),
      ),
    );
    final postbutton=new Container(
      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
      child: RaisedButton.icon(onPressed: (){
        Navigator.of(context).pushNamed(MainPage.tag);
      }, icon: Icon(Icons.navigate_next), label: new Text('Post a Problem'),
        color:Colors.lightGreenAccent,
        textColor: Colors.black54,
      ),
    );
    final image2=new Container(
      width: 370.0,
      height: 200.0,
      child:Padding(
        padding:EdgeInsets.all(10.0),
        child: Image.asset('assets/un.jpg'),
      ),
    ) ;
    final unbutton=new Container(
      padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
      child: RaisedButton.icon(onPressed: (){
        Navigator.of(context).pushNamed(LoginPage.tag);
      }, icon: Icon(Icons.navigate_next), label: new Text('Unresolved Problems'),
        color:Colors.lightGreenAccent,
        textColor: Colors.black54,
      ),
    );

    final image3=new Container(
      width: 370.0,
      height: 200.0,
      child:Padding(
        padding:EdgeInsets.all(10.0),
        child: Image.asset('assets/resol.jpg'),
      ),
    ) ;
    final resolbutton=new Container(
      padding: EdgeInsets.fromLTRB(95, 0, 0, 0),
      child: RaisedButton.icon(onPressed: (){
        Navigator.of(context).pushNamed(LoginPage.tag);
      }, icon: Icon(Icons.navigate_next), label: new Text('Resolved Problems'),
        color:Colors.lightGreenAccent,
        textColor: Colors.black54,
      ),
    );


    final body=new Container(
      child: SingleChildScrollView(
      child: Column(
        children: <Widget>[carousel, image1, postbutton, image2, unbutton, image3, resolbutton],
      ),
    ),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Home"),
      ),
    body:body,

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                Navigator.of(context).pushNamed(LoginPage.tag);
              },
            ),
            ListTile(
              title: Text('My Problems'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).pushNamed(Myproblems.tag);
              },
            ),
            ListTile(
              title: Text('Feedback'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Change Password'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}

