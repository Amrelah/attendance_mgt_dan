import 'package:flutter/material.dart';
import 'package:untitled2/components/reusable_widgets.dart';
import 'package:untitled2/constants.dart';

class TakeAttendance extends StatefulWidget {
  const TakeAttendance({Key? key}) : super(key: key);

  @override
  State<TakeAttendance> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditedAppBar(
          TitlePadding: DanPadding,
          BarIcon: Icons.perm_contact_cal,
          Title: 'Attendance',
          AppbarHeight: AppbarHeight),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDefaultColor,
        child: Icon(Icons.calendar_month_rounded),
        onPressed: () {
          showDatePicker(
              currentDate: DateTime.now(),
              context: context,
              initialDate: DateTime(2022),
              firstDate: DateTime(2022),
              lastDate: DateTime(2022));
        },
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Employe 1'),
            trailing: Checkbox(
              onChanged: (val) {
                setState(() {
                  val = !val!;
                });
              },
              value: false,
            ),
          ),
          ListTile(
            title: Text('Employe 1'),
            trailing: Checkbox(
              onChanged: (val) {
                setState(() {
                  val = !val!;
                });
              },
              value: false,
            ),
          ),
          ListTile(
            title: Text('Employe 1'),
            trailing: Checkbox(
              onChanged: (val) {
                setState(() {
                  val = !val!;
                });
              },
              value: false,
            ),
          ),
        ],
      ),
    );
  }
}
