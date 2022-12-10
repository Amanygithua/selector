import 'main.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
class counter with ChangeNotifier{
  int count=0;
  int sal=1000;
  Increment(){
    count++;
    notifyListeners();
  }
  pullsal(){
    sal=sal-100;
    notifyListeners();
  }
}