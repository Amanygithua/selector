import 'main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';
import 'sal.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('state mangmeet'),
      ),

      body: Center
        (child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [

          Selector<counter,int>(
              selector: (Context ,sal )=>sal.sal,

              builder: ( context, value,  child) {
                print('sal');
                return Text('${value}');
              }),
          Selector<counter,int>(
    selector: (Context ,counter )=>counter.count,

    builder: ( context, value,  child) {
      print('count');
      return Text('${value}');
    }),

      ElevatedButton(
        onPressed: (){
          Provider.of<counter>(context,listen: false).Increment();
        },child: Icon(Icons.add),
      ),]
      ),
    ),
    );
  }
}