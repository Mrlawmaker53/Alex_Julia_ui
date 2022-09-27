import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color.dart';

class SocketMarketController extends GetxController{
  
var selectedDate = '1W';
var textColor;
var cbackgroundColor;
void function()
{
        update();

}
   void switchColor(day) {
  if (day == selectedDate) {
cbackgroundColor=kgreen;
update();
        
  } else {
    cbackgroundColor= Colors.white;
  }
  
}

fSelectedDate(String Day) {
  selectedDate = Day;
}

void switchTextColor(day) {
  if (day == selectedDate) {
    textColor= Colors.white;
    update();

  } else {
    textColor= Colors.grey;
    update();
  }
}

}
