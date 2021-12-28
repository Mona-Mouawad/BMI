import 'package:bmi_calculater/function.dart';
import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  //const result_screen({ Key? key }) : super(key: key);
final int result ;
final String male ;
final int age ;
result_screen({
  required this.age,
 required this.result,
 required this.male,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Center(child:
         Text('BMI Result    '),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image:AssetImage('images/BMI.png')
             //  NetworkImage('https://travelingandliving.com/wp-content/uploads/2020/09/BMI.png')
         ),
            SizedBox(height: 50),
            Text(
              'Result: ${result}',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: textC,
              ),
            ),
            SizedBox(height: 10),
           Text(
              'Gender: ${male}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
           Text(
              'Age: ${age}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          

          ],
        ),
      ),
      
      
    );
  }
}