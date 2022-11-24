import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/components/reusable_widgets.dart';
import 'package:untitled2/constants.dart';

class TakeAttendance extends StatefulWidget {
  const TakeAttendance({Key? key}) : super(key: key);

  @override
  State<TakeAttendance> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  String eDate = DateFormat.yMMMMEEEEd().format(DateTime.now()).toString();
  @override
  Widget build(BuildContext context) {
    Landscape(context);
    return Scaffold(
      appBar: EditedAppBar(
          TitlePadding: DanPadding,
          BarIcon: Icons.perm_contact_cal,
          Title: 'Attendance',
          AppbarHeight: AppbarHeight),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDefaultColor,
        child: Icon(Icons.calendar_month_rounded),
        onPressed: () async {
          var Date = await showDatePicker(
              currentDate: DateTime.now(),
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2050));
          setState(() {
            eDate = DateFormat.yMMMMEEEEd().format(Date!);
          });
        },
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Icon(
                  Icons.date_range,
                  color: kDefaultColor,
                  size: 30.0,
                ),
              ),
              Text(
                eDate,
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          Divider(
            color: Colors.black45,
            height: 5.0,
          ),
          Expanded(
            child: ListView(
              children: [EmployeList(), EmployeList(), EmployeList()],
            ),
          ),
        ],
      ),
    );
  }
}
