import 'package:flutter/material.dart';
import 'package:untitled2/components/reusable_widgets.dart';
import 'package:untitled2/constants.dart';

class RequestView extends StatelessWidget {
  final String title;
  RequestView({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EditedAppBar(
          TitlePadding: DanPadding,
          BarIcon: Icons.list_alt,
          Title: '$title Requests',
          AppbarHeight: AppbarHeight),
      body: ListView(
        children: [
          ListTile(
            title: Text('Request 1'),
          ),
          ListTile(
            title: Text('Request 1'),
          ),
          ListTile(
            title: Text('Request 1'),
          ),
          ListTile(
            title: Text('Request 1'),
          ),
        ],
      ),
    );
  }
}
