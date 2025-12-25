

import 'dart:io';

import 'package:flutter/material.dart';

enum EnStatus {done,cancel,waited}
class AppointmentWidget extends StatelessWidget {
 const  AppointmentWidget({super.key, required this.name, required this.time,required this.status});
final String name,time;
   final EnStatus status;
  @override
  Widget build(BuildContext context) {
    return Center(
        child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(name,style: TextStyle(color: Colors.grey,fontSize: 25)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Icon(Icons.timer_outlined,color: Colors.grey,size: 35,),
                          Text(time,style: TextStyle(color: Colors.grey,fontSize: 25),)
                        ],
                      ),
                    ),


                  ],
                ),
                if(status == EnStatus.done)
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.done_all,color:Colors.lightBlue.shade400 ,size: 40,),
                  )
                else if(status == EnStatus.cancel)
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.close,color:Colors.red.shade900,size: 40,),
                  )


              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 16,
              endIndent: 16,
            )
          ],
        ),

    );
  }
}
