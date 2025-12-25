

import 'package:flutter/material.dart';
import 'package:testing_app/extra/screens/widgets/appointment_widget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.lightBlue.shade400,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20  ),
            child: Icon(Icons.menu,color: Colors.white,size: 40,),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Icon(Icons.calendar_month,color: Colors.white,size: 50,),
        ),
        title: Text("Appointments",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body:Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Wednesday, 22 May 2019",style: TextStyle(color: Colors.grey.shade700,fontSize: 30),),
            ),
            SizedBox(height: 50,),
            AppointmentWidget(name: "Mahmoud Saeid", time: "10:55",status: EnStatus.waited),
            AppointmentWidget(name: "Abdelrahman Nasser", time: "12:55",status: EnStatus.waited),
            AppointmentWidget(name: "Ahmed Abd-elsatar", time: "3:05",status: EnStatus.waited),
            AppointmentWidget(name: "Mohamed", time: "12:55",status: EnStatus.waited),
            AppointmentWidget(name: "Mostafa Azab", time: "3:05",status: EnStatus.cancel),
            AppointmentWidget(name: "Ahmed", time: "3:05",status: EnStatus.done),


          ],
        ),
      ),
    );
  }
}
