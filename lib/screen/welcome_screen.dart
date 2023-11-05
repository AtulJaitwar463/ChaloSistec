import 'package:driving/pages/homepage.dart';
import 'package:driving/provider/auth_provider.dart';
import 'package:driving/screen/register_screen.dart';
import 'package:driving/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _welcomeScreenState();

}

class _welcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/bus.png",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Never a better time than now to start.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    onPressed: (){
                      ap.isSignedIn == true ? Navigator.push(context,
                          MaterialPageRoute(
                              builder: (contex)=> const HomePage()))
                          :
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (contex)=> const RegisterScreen()
                          )
                      );
                    },
                    text: "Get Started",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
