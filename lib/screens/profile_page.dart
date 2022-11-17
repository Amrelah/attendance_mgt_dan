import 'package:flutter/material.dart';

double coverHeight = 230;
double profileHeight = 144;
String name = 'Israel Getachew';
int id = 4715;
double top = coverHeight - profileHeight / 2;

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF349873),
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.1,
        actions: [
          Image.asset('images/edited-logo.png'),
          SizedBox(
            width: 20.0,
          )
        ],
        elevation: 0.0,
        backgroundColor: Color(0xFF349873),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(child: SizedBox()),
              Container(
                height: screenHeight * 0.65,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                      ),
                      ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Log Out'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: (screenHeight * 0.65) - 80,
            child: CircleAvatar(
              radius: 80.0,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     if (MediaQuery.of(context).orientation == Orientation.landscape) {
//       setState(() {
//         coverHeight = coverHeight / 2;
//         top = coverHeight - profileHeight / 2;
//       });
//       print('landscape');
//     } else if (MediaQuery.of(context).orientation == Orientation.portrait) {
//       setState(() {
//         coverHeight = 230;
//         top = coverHeight - profileHeight / 2;
//       });
//       print('port');
//     }
//     return SafeArea(
//       child: Scaffold(
//           backgroundColor: Color(0xFF349873),
//           appBar: AppBar(
//             elevation: 0.0,
//             backgroundColor: Color(0xFF349873),
//             actions: [
//               Image(
//                 image: AssetImage(
//                   'images/edited-logo.png',
//                 ),
//               ),
//             ],
//           ),
//           body: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.center,
//             children: [
//               Column(
//                 children: [
//                   BuildCover(),
//                   Positioned(
//                     top: 20,
//                     child: Expanded(
//                       child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(30),
//                               topRight: Radius.circular(30),
//                             ),
//                           ),
//                           //decoration: BoxDecoration(),
//                           //borderRadius: BorderRadius.only(topRight: 30.0, topLeft: 30),
//                           child: Container(
//                             margin: EdgeInsets.symmetric(
//                                 horizontal: 40, vertical: 100),
//                             child: Column(
//                               //mainAxisAlignment: MainAxisAlignment.end,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Name:  $name',
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 5,
//                                   width: double.infinity,
//                                   child: Divider(
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 Text(
//                                   'ID:  $id',
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                                 SizedBox(
//                                   height: 12,
//                                   child: Divider(
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                     Navigator.pop(context);
//                                   },
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.logout),
//                                       SizedBox(
//                                         width: 12,
//                                       ),
//                                       Text(
//                                         'Log Out',
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           )),
//                     ),
//                   ),
//                 ],
//               ),
//               Positioned(
//                 top: top,
//                 child: BuildProfileImage(),
//               ),
//             ],
//           )),
//     );
//   }
// }
//
// Widget BuildCover() => Container(
//       color: Color(0xFF349873),
//       width: double.infinity,
//       height: coverHeight,
//       // height: coverHeight,
//       // fit: BoxFit.cover,
//     );
//
// Widget BuildProfileImage() => CircleAvatar(
//       backgroundColor: Colors.white,
//       radius: profileHeight / 2,
//
//       backgroundImage: AssetImage('images/user-image.jpg'),
//       // child: Image(
//       //   image: AssetImage('images/kiya.jpg')
//       // ),
//     );
