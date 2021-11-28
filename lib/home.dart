import 'package:flutter/material.dart';

class Home extends StatelessWidget {

String name,email,phone;
Home({ required this.name, required this.email,required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page n°1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
     children: [
        Text('Name : ${name}'),
        Text('Email : ${email}'),
        Text('phone : ${phone}'),

       const Padding(padding: EdgeInsets.only(bottom: 20)),
       RaisedButton(
           child: const Text("Return To Home Page"),
           color: Colors.blue,
           textColor: Colors.white,
           onPressed: () {
             Navigator.pushNamed(context, '/main');
           }
       ),const Padding(padding: EdgeInsets.only(bottom: 10)),
        ],
        ),
      ),
    );
  }

}


