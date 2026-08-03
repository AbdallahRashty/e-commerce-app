import 'package:flutter/material.dart';

class HelpFunction{
  static Color? getColor(String value){
    if(value == "green"){
      return Colors.green;
    } else if(value == "red"){
    return Colors.red;
    } else if(value == "blue"){
    return Colors.blue;
    } else if(value == "pink"){
    return Colors.pink;
    } else if(value == "grey"){
    return Colors.grey;
    } else if(value == "purple"){
   return Colors.purple;
    } else if(value == "black"){
   return Colors.black;
    } else if(value == "white"){
    return Colors.white;
    } else if(value == "yellow"){
    return Colors.yellow;
    } else if(value == "orange"){
    return Colors.orange;
    } else if(value == "brown"){
    return Colors.brown;
    }else if(value == "teal"){
      return Colors.teal;
    }
    return null;
  }
}