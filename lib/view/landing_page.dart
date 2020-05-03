import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpletodo/widgets/custom_navigation_bar.dart';
import 'package:simpletodo/widgets/tasks_widget.dart';
import 'package:simpletodo/widgets/top_bar.dart';
import 'package:custom_switch_button/custom_switch_button.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  DateTime _now = DateTime.now();
  DateTime _dateTime;
  bool _b1 = false;
  bool _b2 = false;
  bool _b3 = false;
  bool _switched;

  @override
  void initState() {
    super.initState();
    _switched = true;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          backgroundColor: Color(0xff03E4D2),
          onPressed: () => _onButtonPressed(),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: CustomNavigationBar(),
      body: Container(
        padding: EdgeInsets.only(bottom: 0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TopBar(),
                TasksWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Color(0xff4E566D),
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState){
              return Container(
                color: Color(0xFF737373),
                height: 450,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(30),
                      topRight: const Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(55, 0, 55, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 3,
                        width: 50,
                        margin: EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      TextFormField(
                        focusNode: FocusNode(
                          canRequestFocus: true,
                        ),
                        decoration: InputDecoration(
                          labelText: "Enter Task",
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              print(_dateTime);
                              setState(() {
                                _b1 = !_b1;
                                _b2 = false;
                                _b3 = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                color: _b1 ? Colors.grey.shade100 : Colors.white,
                                border: Border.all(width: 1, color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                "Today",
                                style: TextStyle(color: Colors.grey, fontFamily: "Dosis"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                _b2 = !_b2;
                                _b1 = false;
                                _b3 = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                color: _b2 ? Colors.grey.shade100 : Colors.white,
                                border: Border.all(width: 1, color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                "Tomorrow",
                                style: TextStyle(color: Colors.grey, fontFamily: "Dosis"),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                                _b3 = !_b3;
                                _b1 = false;
                                _b2 = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                color: _b3 ? Colors.grey.shade100 : Colors.white,
                                border: Border.all(width: 1, color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                "Someday",
                                style: TextStyle(color: Colors.grey, fontFamily: "Dosis"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Notify",
                            style: TextStyle(
                                fontFamily: "Dosis",
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _switched = !_switched;
                              });
                            },
                            child: CustomSwitchButton(
                              checked: _switched,
                              animationDuration: Duration(milliseconds: 200),
                              unCheckedColor: Colors.white,
                              backgroundColor: _switched ? Colors.grey.shade300 : Color(0xff04DE70),
                              checkedColor: Colors.white,
                              buttonWidth: 40,
                              buttonHeight: 22,
                              indicatorWidth: 13,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          child: CupertinoDatePicker(
                            initialDateTime: _dateTime,
                            onDateTimeChanged: (dateTime){
                              setState(() {
                                if(dateTime.day == _now.day){
                                  _b1 = true;
                                  _b2 = false;
                                  _b3 = false;
                                }else if(dateTime.day == _now.day+1){
                                  _b2 = true;
                                  _b1 = false;
                                  _b3 = false;
                                }else {
                                  _b3 = true;
                                  _b1 = false;
                                  _b2 = false;
                                }
                                _dateTime = dateTime;
                              });
                            },
                          )
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 200,
                        height: 35,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff1FC4A4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("Put On List",style: TextStyle(fontFamily: "Dosis",color: Colors.white,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              );
            }
          );
        });
  }

}
