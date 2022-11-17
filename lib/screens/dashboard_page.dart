import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../components/reusable_widgets.dart';
import '../constants.dart';
import 'drawer_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int val = 6;
  @override
  Widget build(BuildContext context) {
    setState(() {
      AppbarHeight = MediaQuery.of(context).size.height * 0.2;
    });
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      DanPadding = 20.0;
    } else {
      DanPadding = MediaQuery.of(context).size.width * 0.35;
    }
    return SafeArea(
      child: Scaffold(
        drawer: Drawer_screen(),
        appBar: EditedAppBar(
            TitlePadding: DanPadding,
            AppbarHeight: AppbarHeight,
            BarIcon: Icons.av_timer,
            Title: 'Dashboard'),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 5,
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
                                  margin:
                                      EdgeInsets.only(left: 50.0, right: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.black, width: 1.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                color: Color(0xFF349873),
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
                                  totalSteps: val,
                                  currentStep: val,
                                  width: 100,
                                  stepSize: 4.0,
                                  child: Center(
                                    child: Text(
                                      '$val',
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
                                  center: Text(
                                    '0',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 50.0,
                                        fontWeight: FontWeight.bold),
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/requestView');
                                },
                                child: DashboardContainer(
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/requestView');
                                },
                                child: DashboardContainer(
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
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/takeAttendance');
                            },
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 15.0),
                              child: DashboardContainer(
                                Title: '',
                                color: Color(0xFF349873),
                                child: Text(
                                  'Take Attendance\n',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                left: 0.0,
                                right: 0.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
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
  final Color color;
  DashboardContainer(
      {required this.Title,
      required this.child,
      this.left = 50.0,
      this.right = 5.0,
      this.color = Colors.transparent});
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
          color: color,
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
