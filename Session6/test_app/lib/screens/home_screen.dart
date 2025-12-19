

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff1C2135),
     appBar: AppBar(
       backgroundColor: Color(0xff24263B),
       title: Text("BMI Calculator",style: TextStyle(color: Colors.white,height: 24,fontSize: 20,fontWeight: FontWeight.w600),),
      centerTitle: true ,
     ),

      body:

      Padding(
        padding: const EdgeInsets.symmetric(vertical: 21,horizontal: 20),
        child: Column(
        children: [
          //Gender Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                width: 155,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
                child: Column(
                  children: [
                    Icon(Icons.male,size: 144 ,color: Colors.white,),
                    Text("Male",style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E)),)
                  ],
                ),
              ),
            ),
            SizedBox(width: 9,),
            Expanded(
              child: Container(
                width: 155,
                height: 180,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff24263B)),
                child: Column(
                  children: [
                    Icon(Icons.female,size: 144 ,color: Colors.white,),
                    Text("Female",style: TextStyle(fontSize: 20,color: Color(0xff8B8C9E)),)
                  ],
                ),
              ),
            ),
          ],
          ),
          //Height Container
          SizedBox(height: 25,),
          Container(
            height: 189,width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xff333244)),
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Text("Height",style: TextStyle(color: Color(0xff8B8C9E),fontSize: 20)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text("150",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                //
                //     Text("cm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500)),
                //
                //   ],
                // ),
                Text.rich(TextSpan(children: [
                  TextSpan(text: "150",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  TextSpan(text: "cm",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500)),
                ])),
                 Slider(value: 150, onChanged:(value){print(value);},activeColor: Color(0xffE83D67),inactiveColor: Colors.white,min: 0,max: 250,)
              ],
            ),
          ),
          //Age & Weight Row
          SizedBox(height: 29,),
          Row(
          children: [
            Expanded(
              flex: 1,
                child: Container(

                  decoration: BoxDecoration(color: Color(0xff24263B),borderRadius: BorderRadius.circular(12)),
                  width: 155,
                  height: 180,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10,right: 17,left: 16),
                    child: Column(

                      children: [
                        Text("Weight",style: TextStyle(fontSize: 20 ,color: Color(0xff8B8C9E),fontWeight: FontWeight.w300),),
                        Text("60",style: TextStyle(fontSize: 40 ,color: Colors.white,fontWeight: FontWeight.w700),),
                        SizedBox(height: 21,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton.small(onPressed: (){},backgroundColor: Color(0xff8B8C9E),shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(100) ,),child: Icon(Icons.remove,color: Colors.white,)),
                            FloatingActionButton.small(onPressed: (){},backgroundColor: Color(0xff8B8C9E),shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(100) ,),child: Icon(Icons.add,color: Colors.white,),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

            SizedBox(width: 9,),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 15,bottom: 10,right: 17,left: 16),
                decoration: BoxDecoration(color: Color(0xff333244),borderRadius: BorderRadius.circular(12)),
                width: 155,
                height: 180,
                child:
                Column(

                  children: [
                    Text("Age",style: TextStyle(fontSize: 20 ,color: Color(0xff8B8C9E),fontWeight: FontWeight.w300),),
                    Text("26",style: TextStyle(fontSize: 40 ,color: Colors.white,fontWeight: FontWeight.w700),),
                    SizedBox(height: 21,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FloatingActionButton.small(onPressed: (){},backgroundColor: Color(0xff8B8C9E),shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(100) ,),child: Icon(Icons.remove,color: Colors.white,)),
                        FloatingActionButton.small(onPressed: (){},backgroundColor: Color(0xff8B8C9E),shape:RoundedRectangleBorder(borderRadius:BorderRadiusGeometry.circular(100) ,),child: Icon(Icons.add,color: Colors.white,),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
          ),
          //Button
          SizedBox(height: 27,),

          Container(
            width: double.infinity,
            child: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xffE83D67),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),child: Text("Calculate",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w600),),),
          )
        ],
        ),
      ),
    );
  }
}
