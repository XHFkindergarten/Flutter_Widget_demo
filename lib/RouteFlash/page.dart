import 'package:flutter/material.dart';
import '../RouteFlash/CustomRoute.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('First page', style: TextStyle(
          fontSize: 36.0
        ),),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(
              CustomRoute(SecondPage())
              // MaterialPageRoute(
              //   builder: (BuildContext context) {
              //     return SecondPage();
              //   }
              // )
            );
          },
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Second page', style: TextStyle(
          fontSize: 36.0
        ),),
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}