import 'package:flutter/material.dart';

import './page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "";
  String otherProfilePic = "";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Skillverse"), backgroundColor: Colors.redAccent,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            new UserAccountsDrawerHeader(
//              accountEmail: new Text("bramvbilsen@gmail.com"),
//              accountName: new Text("Bramvbilsen"),
//              currentAccountPicture: new GestureDetector(
//                child: new CircleAvatar(
//                  backgroundImage: new NetworkImage(currentProfilePic),
//                ),
//                onTap: () => print("This is your current account."),
//              ),
//              decoration: new BoxDecoration(
//                image: new DecorationImage(
//                  image: new NetworkImage("https://scontent.fwgc1-1.fna.fbcdn.net/v/t1.0-9/28378470_196578974433815_9044190641943471601_n.jpg?_nc_cat=0&oh=f4c91c3b83c24dab74cd659537398336&oe=5BBCC07D"),
//                  fit: BoxFit.fill
//                )
//              ),
//            ),

            new ListTile(
                title: new Text("login"),
                //trailing: new Icon(Icons.add),
                onTap: () {

                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Login")));
                  }
            ),
            new ListTile(
                title: new Text("Students"),
                trailing: new Icon(Icons.arrow_drop_down),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Courses")));
                }
            ),
            new ListTile(
              title: new Text("Courses"),
              trailing: new Icon(Icons.arrow_drop_down),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Courses")));
              }
            ),

            new ListTile(
                title: new Text("Enquiry"),
                trailing: new Icon(Icons.arrow_drop_down),

                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("hello")));
                }
            ),

            new ListTile(
              title: new Text("About"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("About")));
              }
            ),

           /* new Divider(),
            new ListTile(
              title: new Text("Cancel"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),*/
          /*  new DropdownButton<String>(

              items: <String>['Foo', 'Bar'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),*/
          ],
        ),


      ),
     /* body: new Center(
        child: new Text("Drawer Tutorial", style: new TextStyle(fontSize: 35.0)),
      )*/
    );
  }
}


class LoginApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Login App',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      //routes: routes,
    );
  }
}
