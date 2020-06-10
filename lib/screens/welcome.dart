// This page will contain the welcome screen for the user.
// The page contains a brief description of what the exercise app is all about.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifitness/screens/details.dart';
import 'package:ifitness/widgets/brandName.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            brandName(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
              'WELCOME TO IFitness,LET US GET YOU INTO SHAPE',textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Work Sans/WorkSans-ExtraLight',
                  fontSize: 34.0,

                ),
              ),
            ),

            MaterialButton(
               elevation: 8.0,
                child: Text('TAP TO GET STARTED',
                  style:TextStyle(
                  color: Colors.white,
                  fontFamily: 'Work Sans/WorkSans-Regular'
              )),
                color: Color(0xff2d438d),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return new UserDetails();
                  }));
                })

          ],
        ),
      ),
    );
  }
}
