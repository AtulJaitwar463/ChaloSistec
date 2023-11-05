
import 'dart:async';

import 'package:driving/screen/register_screen.dart';
import 'package:driving/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutto/firebase_services/splash_services.dart';
//import 'package:flutto/ui/auth/login_screen.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {

  //SplashServices splashscren = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context)=> WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello atul", style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
