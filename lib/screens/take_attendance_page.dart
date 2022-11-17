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
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.0),
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Reason',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: DecoratedTextField(
                    hint: 'Password Reset Reason',
                    Ktype: TextInputType.text,
                    secure: false),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 130.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF349873),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {});
                      },
                      child: Text(
                        'REQUEST',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
