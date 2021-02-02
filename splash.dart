import 'dart:async';
import 'package:weeding/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 4000), () {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => Login()));
    });
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue[400]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          image: DecorationImage(
              image: AssetImage('asset/image/background.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'asset/image/logo.png',
            height: 200.0,
          ),
          SizedBox(
            height: 90.0,
          ),
          SpinKitWanderingCubes(
            color: Colors.black,
          )
        ],
      ),
    ));
  }
}
