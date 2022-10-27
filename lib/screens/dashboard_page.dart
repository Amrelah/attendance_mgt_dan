import 'dart:math';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text('Dan Energy'),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/changepassword');
                },
                child: Text('change password')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Text('profile')),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/request');
                },
                child: Text('Request')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Text('logout')),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.indigo.shade900,
        actions: [
          SizedBox(
            width: 60.0,
            height: 60.0,
            child: Image(
              image: AssetImage('images/edited-logo.png'),
            ),
          ),
          SizedBox(width: 20.0)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.indigo.shade900,
              width: double.infinity,
              child: Column(children: [
                //Expanded(child: Container()),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Dan Energy Ethiopia', style: topTitle),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.symmetric(vertical: 0.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.av_timer_outlined,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      Text(' Dashboard', style: topTitle)
                    ],
                  ),
                )
              ]),
            )),
            Expanded(
                flex: 7,
                child: Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    //padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.only(left: 50.0, right: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.black, width: 1.0),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Profile',
                                      style: cardTitle,
                                    ),
                                    Text('Name: Ermiyas',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('ID: de0001',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('Dept: Graphics',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Center(
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/profile');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.0,
                                                vertical: 10.0),
                                            decoration: BoxDecoration(
                                              color: Colors.indigo[900],
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                            child: Text(
                                              'Detail',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DashboardContainer(
                              Title: 'Total Abscents',
                              right: 50.0,
                              left: 5.0,
                              child: CircularStepProgressIndicator(
                                totalSteps: 3,
                                currentStep: 3,
                                width: 100,
                                stepSize: 4.0,
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                        fontSize: 60.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo),
                                  ),
                                ),
                                selectedColor: Colors.black,
                                //  roundedCap: (_, isSelected) => isSelected,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DashboardContainer(
                              Title: 'Pending Request',
                              child: Container(
                                  child: CircularPercentIndicator(
                                radius: 50.0,
                                backgroundColor: Colors.red,
                                lineWidth: 8.0,
                                center: Center(
                                  child: Image.asset(
                                    'images/wrong.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              )),
                            ),
                            DashboardContainer(
                              Title: 'Approved Request',
                              right: 50.0,
                              left: 5.0,
                              child: Container(
                                  child: CircularPercentIndicator(
                                radius: 50.0,
                                lineWidth: 12.0,
                                backgroundColor: Colors.black,
                                progressColor: Colors.green,
                                backgroundWidth: 6.0,
                                percent: 10 / 100,
                                center: Text(
                                  '10',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DashboardContainer(
                              Title: 'Declined Request',
                              child: CircularPercentIndicator(
                                radius: 50.0,
                                lineWidth: 12.0,
                                backgroundColor: Colors.black,
                                progressColor: Colors.green,
                                backgroundWidth: 6.0,
                                percent: 10 / 100,
                                center: Text(
                                  '10',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            DashboardContainer(
                              Title: 'Total Request',
                              right: 50.0,
                              left: 5.0,
                              child: Container(
                                  child: CircularPercentIndicator(
                                radius: 50.0,
                                lineWidth: 12.0,
                                backgroundColor: Colors.black,
                                progressColor: Colors.deepOrange,
                                backgroundWidth: 6.0,
                                percent: 20 / 100,
                                center: Text(
                                  '20',
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 50.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  final String Title;
  final Widget child;
  final double left;
  final double right;
  DashboardContainer(
      {required this.Title,
      required this.child,
      this.left = 50.0,
      this.right = 5.0});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.only(
          left: left,
          right: right,
          top: 10.0,
          bottom: 7.0,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black, width: 0.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Text(Title, style: cardTitle),
            child,
          ],
        ),
      ),
    );
  }
}
