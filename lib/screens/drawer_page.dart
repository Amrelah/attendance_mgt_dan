import 'package:flutter/material.dart';

import '../constants.dart';

class Drawer_screen extends StatelessWidget {
  const Drawer_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Israel Getachew",
              style: kAccountTextStyle,
            ),
            accountEmail: Text(
              "izzy@danenergy.co",
              style: kAccountTextStyle,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                "images/user-image.jpg",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.speed),
            iconColor: Color(0xFF349873),
            title: const Text(
              'Dashboard',
              style: kSideMenuItemsTextStyle,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3.0,
          ),
          ListTile(
            leading: Icon(Icons.contact_support_outlined),
            iconColor: Color(0xFF349873),
            title: const Text(
              'Request',
              style: kSideMenuItemsTextStyle,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/request');
            },
          ),
          Divider(
            height: 3.0,
          ),
          ListTile(
            leading: Icon(Icons.lock_reset_outlined),
            iconColor: Color(0xFF349873),
            title: const Text(
              'Change Password',
              style: kSideMenuItemsTextStyle,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/changepassword');
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_contact_cal),
            iconColor: Color(0xFF349873),
            title: const Text(
              'Take Attendance',
              style: kSideMenuItemsTextStyle,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pushNamed(context, '/takeAttendance');
            },
          ),
          Divider(
            height: 3.0,
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            iconColor: Color(0xFF349873),
            title: const Text(
              'Logout',
              style: kSideMenuItemsTextStyle,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 3.0,
          ),
        ],
      ),
    );
  }
}
