import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text("DumbList",style: TextStyle(fontSize: 20,fontFamily: "Dosis", fontWeight: FontWeight.bold, color: Colors.black),),
    );
  }
}
