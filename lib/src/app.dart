import 'package:flutter/material.dart';
import 'package:api/src/ui/formadd/form_add_screen.dart';
import 'package:api/src/ui/home/home_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black45,
      ),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          title: Text(
            "Flutter CRUD API",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  _scaffoldState.currentContext,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return FormAddScreen();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        
        body: HomeScreen()
      )
    );
  }
}
