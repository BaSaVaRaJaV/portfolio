import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Basavaraja V"),
          backgroundColor: Colors.black45,
        ),
        body: myProfileWidget(),
      ),
    );
  }
}

// replace with example code above
Widget myProfileWidget() {
  return Container(
      decoration: BoxDecoration(
        // Box decoration takes a gradient
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.indigo[600],
            Colors.indigo[400],
            Colors.indigo[300],
            Colors.indigo[200],
          ],
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(flex: 3, child: MyProfile()),
          Expanded(flex: 7, child: MyProjects()),
        ],
      ));
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0)),
      ),
      child: Column(
        children: <Widget>[
          // Icon(Icons.account_circle, size: 150),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('images/studio.png'),
            radius: 80,
            backgroundColor: Colors.lightBlue,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0),
            child: Row(),
          ),
          Text(
            'Fullstack Developer',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Futura',
              backgroundColor: Colors.grey[200],
            ),
          ),
          SocialButtons()
        ],
      ),
    );
  }
}

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0)),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // SignInButton(
          //   Buttons.Google,
          //   onPressed: () {},
          // ),
          RaisedButton(
            onPressed: () {},
            child: Text('Twitter', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Youtube', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const RaisedButton(
            onPressed: null,
            child: Text('Disabled Button', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            child: const Text('Enabled Button', style: TextStyle(fontSize: 20)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child:
                  const Text('Gradient Button', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
