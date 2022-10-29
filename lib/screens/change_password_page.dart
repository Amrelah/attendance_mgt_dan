import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF349873),
          elevation: 0.0,
          actions: [
            Image.asset('images/edited-logo.png'),
          ],
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Color(0xFF349873),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15.0),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 130.0),
                      child: Text(
                        'Dan Energy Ethiopia',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: [
                        Image.asset('images/R.png', width: 27.0),
                        Text(
                          ' Change Password',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Current Password',
                          hintStyle: TextStyle(fontWeight: FontWeight.w500),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: TextStyle(fontWeight: FontWeight.w500),
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(fontWeight: FontWeight.w500),
                          enabledBorder: InputBorder.none,
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
          ],
        ),
      ),
    );
  }
}
