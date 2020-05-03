import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TasksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.only(left: 25, bottom: 15),
              child:
              Text("Today", style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade200,
                  fontFamily: "Dosis"),)
          ),
          Slidable(
              actionPane: SlidableScrollActionPane(),
              actionExtentRatio: 0.10,
              showAllActionsThreshold: 1,
                enabled: true,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                            SizedBox(width: 18,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                                Text("9:00 am", style: TextStyle(fontFamily: "Dosis",fontSize: 9, color: Colors.grey.shade500),),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.notifications_none,color: Colors.grey.shade400,size: 16,),),
                      ],
                    ),
                  ),
                ),
              actions: <Widget>[
                Container(
                  height: 48,
                  width: 10,
                  alignment: Alignment.center,
                  color: Color(0xffDCF8E2),
                  child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
                ),
              ],
              secondaryActions: <Widget>[
                Container(
                  height: 42,
                  width: 10,
                  color: Color(0xffFCF2F1),
                  alignment: Alignment.center,
                  child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
                ),
              ],
            ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                    SizedBox(width: 18,),
                    Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                        SizedBox(width: 18,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                            Text("11:00 pm", style: TextStyle(fontFamily: "Dosis",fontSize: 9, color: Colors.grey.shade500),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.notifications_none,color: Colors.grey.shade400,size: 16,),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                    SizedBox(width: 18,),
                    Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.only(left: 25, bottom: 15),
              child:
              Text("Tomorrow", style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade200,
                  fontFamily: "Dosis"),)
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                    SizedBox(width: 18,),
                    Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                        SizedBox(width: 18,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                            Text("12:00 am", style: TextStyle(fontFamily: "Dosis",fontSize: 9, color: Colors.grey.shade500),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.notifications_none,color: Colors.grey.shade400,size: 16,),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.only(left: 25, bottom: 15),
              child:
              Text("Someday", style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey.shade200,
                  fontFamily: "Dosis"),)
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                        SizedBox(width: 18,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                            Text("3:00 pm", style: TextStyle(fontFamily: "Dosis",fontSize: 9, color: Colors.grey.shade500),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.notifications_none,color: Colors.grey.shade400,size: 16,),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
          Slidable(
            actionPane: SlidableScrollActionPane(),
            actionExtentRatio: 0.10,
            showAllActionsThreshold: 1,
            enabled: true,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.fromLTRB(13, 6, 13, 6),
              elevation: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.lens, color: Colors.grey.shade100,size: 20,),
                    SizedBox(width: 18,),
                    Text("Bring grocery from market", style: TextStyle(fontFamily: "Dosis"),),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                height: 48,
                width: 10,
                alignment: Alignment.center,
                color: Color(0xffDCF8E2),
                child: Text("Done",style: TextStyle(color: Color(0xff1ECE42),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
            secondaryActions: <Widget>[
              Container(
                height: 42,
                width: 10,
                color: Color(0xffFCF2F1),
                alignment: Alignment.center,
                child: Text("Done",style: TextStyle(color: Color(0xffFE3F3F),fontSize: 14, fontFamily: "Dosis"),),
              ),
            ],
          ),
        ],
      );
  }
}
