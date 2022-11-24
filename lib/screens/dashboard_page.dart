import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:untitled2/screens/request_view_page.dart';
import 'package:untitled2/screens/take_attendance_page.dart';
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
    Landscape(context);
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer_screen(),
        appBar: EditedAppBar(
          TitlePadding: DanPadding,
          AppbarHeight: AppbarHeight,
          BarIcon: Icons.av_timer,
          Title: 'Dashboard',
          menu: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.only(left: 50.0, right: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Profile',
                              style: cardTitle,
                            ),
                            const Text('Name: Ermiyas',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text('ID: de0001',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const Text('Dept: Graphics',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/profile');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF349873),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: const Text(
                                    'Detail',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    DashboardContainer(
                      Title: 'Total Absents',
                      right: 50.0,
                      left: 5.0,
                      route: RequestView(title: 'Absent'),
                      child: CircularStepProgressIndicator(
                        totalSteps: val,
                        currentStep: val,
                        width: 100,
                        stepSize: 4.0,
                        selectedColor: Colors.black,
                        child: Center(
                          child: Text(
                            '$val',
                            style: const TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                        ),
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
                      route: RequestView(
                        title: 'Pending Requests',
                      ),
                      child: CircularPercentIndicator(
                        radius: 50.0,
                        backgroundColor: Colors.black,
                        progressColor: Color(0xffcccc00),
                        lineWidth: 12.0,
                        backgroundWidth: 6.0,
                        percent: 10 / 100,
                        center: const Text(
                          '10',
                          style: TextStyle(
                              color: Color(0xffcccc00),
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    DashboardContainer(
                      Title: 'Approved Request',
                      right: 50.0,
                      left: 5.0,
                      route: RequestView(
                        title: 'Approved Requests',
                      ),
                      child: Container(
                          child: CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 12.0,
                        backgroundColor: Colors.black,
                        progressColor: Colors.green,
                        backgroundWidth: 6.0,
                        percent: 10 / 100,
                        center: const Text(
                          '10',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DashboardContainer(
                      Title: 'Declined Request',
                      route: RequestView(title: 'Declined Requests'),
                      child: CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 12.0,
                        backgroundColor: Colors.black,
                        progressColor: Colors.red,
                        backgroundWidth: 6.0,
                        percent: 10 / 100,
                        center: const Text(
                          '10',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    DashboardContainer(
                      Title: 'Total Request',
                      right: 50.0,
                      left: 5.0,
                      route: RequestView(title: 'Total Requests'),
                      child: Container(
                          child: CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 12.0,
                        backgroundColor: Colors.black,
                        progressColor: Colors.blue,
                        backgroundWidth: 6.0,
                        percent: 20 / 100,
                        center: const Text(
                          '20',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TakeAttendance()));
                  },
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: kDefaultColor,
                        border: Border.all(color: kDefaultColor, width: 0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: const Text(
                          'Take Attendance',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            )),
      ),
    );
  }
}
