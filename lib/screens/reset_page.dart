import 'package:flutter/material.dart';
import 'package:untitled2/components/reusable_widgets.dart';
import 'package:untitled2/constants.dart';
import 'package:untitled2/screens/profile_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
        appBar: EditedAppBar(
            TitlePadding: DanPadding,
            BarIcon: Icons.lock_reset,
            Title: 'Reset Password',
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 5.0),
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
      ),
    );
  }
}
