import 'dart:math';

import 'package:bmi_calculater/function.dart';
import 'package:bmi_calculater/result.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
class bmicalculater extends StatefulWidget {
  //const bmicalculater({ Key? key }) : super(key: key);

  @override
  _bmicalculaterState createState() => _bmicalculaterState();
}

class _bmicalculaterState extends State<bmicalculater> {
  @override
 double Height=120;
bool male =true;
int Weight =50;
int age=20;
Color defultColor = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Center(
          child: Text('BMI Calculater',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white ,),
          ),
        ),
        backgroundColor:Colors.black,
      ),
      body:
      Column(
        children: [ 
       Expanded(
       child:  Padding(
         padding: const EdgeInsets.all(25.0),
         child: Row(
           children: [
             Expanded(
               child:GestureDetector(
                 onTap: (){
                   setState(() {
                     male =true;
                     defultColor=Colors.blue;

                   });
                 },
                 child: Container(
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Icon(
                      Icons.male,
                      size: 100,
                      color: Colors.white,
                     ),
                      Text('Male',
                      style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:male? Colors.blue:Colors.grey[850] ,
                  ),
                  ),
               ),
             ),
            SizedBox(width:25),
            Expanded(
              child: GestureDetector(
                onTap:()
                {
                  setState(() {
                    male=false;
                    defultColor=Colors.pinkAccent ;
                  });
                },
                child: Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                      Icons.female,
                      size: 100,
                      color:  Colors.white,
                     ),
                      Text('Female',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:male? Colors.grey[850]:Colors.pink[400] ,
                  ),
                  ),
              ),
            ),
            ],
         ),
       ),
       ),

       Expanded(
       child: Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: 20,
         ),
         child: Container(
           width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Height',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text('${Height.round()}',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
                SizedBox(width: 5,),
                Text('CM',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              ),
             
                ],
              ),
              Slider(
                value: Height, 
                min: 70,
                max: 215,
                activeColor: defultColor,
                onChanged: (value){
                 setState(() {
                   Height=value;
                 });
                
                }),
           ],
          ),
           decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.grey[800],
                  ),
                 
          ),
       ),
       ),
      Expanded(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Row(
           children: [
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                        ),
                 child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',
                       style: TextStyle(color: Colors.white,
                       fontSize:25 ),
                       ),
                      Text('${Weight}',
                      style: TextStyle(color: Colors.white,
                       fontSize:25,
                       fontWeight: FontWeight.bold ),
                       
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          InkWell(
                            onTap:()
                            {
                              setState(() {
                                Weight++;
                              });  } ,
                            child: CircleAvatar(radius: 28,
                              backgroundColor: defultColor,
                              child:
                              Text('+',
                             style: TextStyle(color: Colors.white,
                             fontSize:25,
                             fontWeight: FontWeight.bold, ),
                             ),
                                ),
                          ),
                     SizedBox(width: 20,),
                          InkWell(
                            onTap:()
    {
    setState(() {
    Weight--;
    });  } ,
                            child: CircleAvatar(radius: 28,
                              backgroundColor: defultColor,
                              child:  Text('-',
                             style: TextStyle(color: Colors.white,
                             fontSize:25,
                             fontWeight: FontWeight.bold, ),
                             ),


                     ),
                          ),
                       
                        ],
                      )
                    ],
                  ),
                 
                ),
             ),
             SizedBox(width: 20,),
              Expanded(
               child: Container(
                 decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                        ),
                 child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',
                       style: TextStyle(color: Colors.white,
                       fontSize:25 ),
                       ),
                      Text('${age}',
                      style: TextStyle(color: Colors.white,
                       fontSize:25,
                       fontWeight: FontWeight.bold ),
                       
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:()
                            {
                              setState(() {
                                age++;
                              });  } ,
                            child: CircleAvatar(radius: 28,
                              backgroundColor: defultColor,
                              child:  Text('+',
                             style: TextStyle(color: Colors.white,
                             fontSize:25,
                             fontWeight: FontWeight.bold, ),
                             ),
                                ),
                          ),
                     SizedBox(width: 20,),
                          InkWell(
                            onTap:()
                            {
                              setState(() {
                                age--;
                              });  } ,
                            child: CircleAvatar(radius: 28,
                              backgroundColor: defultColor,
                              child:  Text('-',
                             style: TextStyle(color: Colors.white,
                             fontSize:25,
                             fontWeight: FontWeight.bold, ),
                             ),
                            ),
                          ),
                       
                        ],
                      )
                    ],
                  ),
                 
                ),
             ),
          
           ],
         ),
       ),
       ),
       Container(
         width: double.infinity,
          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: defultColor,
                ),
               
        child: MaterialButton
        (onPressed: ()
        {
         double result= Weight/pow(Height/100, 2) ;
         textColor(result);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=>result_screen(
                age: age,
                male: male? 'Male' : 'Female',
                result: result.round(),
              ),
            ),
            );
         },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: 
          Text('CALCULATE',
          style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 20,
             color: Colors.white,
          ),),
        ),
        ),
        
        ),
          ],
      ),
    );
  }
}

 