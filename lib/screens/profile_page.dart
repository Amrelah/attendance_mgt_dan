import 'package:flutter/material.dart';

final double coverHeight = 230;
final double profileHeight = 144;
final String name = 'Israel Getachew';
final int id = 4715;
final top = coverHeight - profileHeight / 2;

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF349873),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xFF349873),
            actions: [
              Image(
                image: AssetImage(
                  'images/edited-logo.png',
                ),
              ),
            ],
          ),
          body: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  BuildCover(),
                  Positioned(
                    top: 20,
                    child: Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          //decoration: BoxDecoration(),
                          //borderRadius: BorderRadius.only(topRight: 30.0, topLeft: 30),
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 100),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name:  $name',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                  width: double.infinity,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'ID:  $id',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 12,
                                  child: Divider(
                                    color: Colors.grey,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.logout),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        'Log Out',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: top,
                child: BuildProfileImage(),
              ),
            ],
          )),
    );
  }
}

Widget BuildCover() => Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14, vertical: 35),
      ),
      color: Color(0xFF349873),
      width: double.infinity,
      height: coverHeight,
      // height: coverHeight,
      // fit: BoxFit.cover,
    );

Widget BuildProfileImage() => CircleAvatar(
      backgroundColor: Colors.white,
      radius: profileHeight / 2,

      backgroundImage: AssetImage('images/user-image.jpg'),
      // child: Image(
      //   image: AssetImage('images/kiya.jpg')
      // ),
    );
