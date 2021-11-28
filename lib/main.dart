import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:route_test/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (BuildContext context) => Home(phone: '', name: '', email: ''),
        '/main': (BuildContext context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),

        body: Column(children: [

          Padding(

            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              controller: _phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter your phone'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => Home(
                          name: _name.text,
                          email: _email.text,
                          phone: _phone.text)),
                );
              },
              child: Text("Submit   👉"),
          ),
          ElevatedButton(
              child: const Text("Go To the second page"),
              //color: Colors.blue,
              //textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }
          ),
        ]));
  }
}
