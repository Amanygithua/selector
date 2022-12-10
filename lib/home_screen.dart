import 'main.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'counter.dart';
import 'package:provider/provider.dart';
class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (BuildContext context)=>counter(),
          child: home()),
    );
  }
}
