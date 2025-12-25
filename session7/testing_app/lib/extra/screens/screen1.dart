

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xfff36fbf),Colors.blue],
              begin: AlignmentGeometry.bottomCenter,
             transform: GradientRotation(100)
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadiusGeometry.circular(75)),
                    child: Icon(Icons.beach_access,color: Colors.deepOrange,size: 60,),
                  ),
                  SizedBox(height: 10,),
                  Text("This is a sample text",style: TextStyle(color: Colors.white,fontSize: 25),)
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
