import 'package:flutter/material.dart';
import '../components/reusable_widgets.dart';
import '../constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
            Title: 'Change Password',
            BarIcon: Icons.lock_clock,
            AppbarHeight: AppbarHeight,
            TitlePadding: DanPadding),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                  child: DecoratedTextField(
                    hint: 'Current Password',
                    secure: obscureText3,
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText3 = !obscureText3;
                        });
                      },
                      child: Icon(
                        !obscureText3 ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF349873),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                  child: DecoratedTextField(
                    hint: 'New Password',
                    secure: obscureText1,
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText1 = !obscureText1;
                        });
                      },
                      child: Icon(
                        !obscureText1 ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF349873),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                  child: DecoratedTextField(
                    hint: 'Confirm Password',
                    secure: obscureText2,
                    icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText2 = !obscureText2;
                        });
                      },
                      child: Icon(
                        !obscureText2 ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xFF349873),
                      ),
                    ),
                  ),
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
