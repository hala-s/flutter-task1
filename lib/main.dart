import 'package:flutter/material.dart';
import './profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Flutter 101"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home), centerTitle: true, title: Text(title)),
      body: Center(
        child: Text(
          'Hello, Flutter !',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 40,
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Hala '),
              accountEmail: new Text('task3@exmpl.com'),
              currentAccountPicture: new CircleAvatar(
                child: ClipRRect(
                  child: Image.asset('assets/p1.png',
                      width: 100, height: 100, fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(90.0),
                ),
              ),
            ),
            new ListTile(
              title: new Text(' my profile '),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyProfile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
