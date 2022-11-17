import '../components/reusable_widgets.dart';
import '/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image(
                      height: 200.0,
                      width: 200.0,
                      image: AssetImage(
                        'images/empowering-life-final.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Dan Energy Ethiopia',
                style: kHeadingTitleStyle,
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: DecoratedTextField(
                  hint: 'Username',
                  Ktype: TextInputType.name,
                  secure: false,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: DecoratedTextField(
                  hint: 'Password',
                  secure: _obscureText,
                  icon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      !_obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Color(0xFF349873),
                    ),
                  ),
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     contentPadding: EdgeInsets.all(20.0),
                //     suffixIcon: GestureDetector(
                //       onTap: () {
                //         setState(() {
                //           _obscureText = !_obscureText;
                //         });
                //       },
                //       child: Icon(
                //         _obscureText ? Icons.visibility : Icons.visibility_off,
                //         color: Color(0xFF349873),
                //       ),
                //     ),
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: kEnabledBorderColor,
                //       ),
                //       borderRadius: BorderRadius.circular(30), //<-- SEE HERE
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(
                //         color: kFocusedBorderSideColor,
                //       ),
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     hintText: 'Password',
                //   ),
                //   obscureText: _obscureText,
                // ),
              ),
              SizedBox(
                height: 15.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/reset');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot Password?',
                      style: kForgotPassword,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Dashboard');
                  },
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF349873),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: kLoginStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
