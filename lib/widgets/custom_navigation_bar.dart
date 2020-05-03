import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 10,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100)),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            height: 30,
            width: MediaQuery.of(context).size.width,
          ),
        );
  }
}
