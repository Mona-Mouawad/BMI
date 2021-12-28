import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color defultColor = Colors.blue;
Color textC = Colors.white;

Color textColor (result)
{
 if(result < 18.5) textC= Colors.blue;
 if(result >= 18.5 && result <= 24.9 ) textC= Colors.green;
 if(result >= 25 && result <= 29.9 ) textC= Colors.yellow;
 if(result >30 ) textC= Colors.red;
  return textC ;
}