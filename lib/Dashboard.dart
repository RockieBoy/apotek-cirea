import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app_apotik_cirea/auth/FirstPage.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child :Column(
          children: <Widget>[
            SizedBox(),
            Center(
              child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context){
                return Homepage();
              }));
              }, 
              
              child: const Text("Logout")),
            )
            
          ],

        ),
      ),
    );
  }
}