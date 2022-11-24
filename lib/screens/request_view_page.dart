import 'package:flutter/material.dart';
import 'package:untitled2/components/reusable_widgets.dart';
import 'package:untitled2/constants.dart';

class RequestView extends StatelessWidget {
  final String title;
  RequestView({required this.title});
  @override
  Widget build(BuildContext context) {
   Landscape(context);
    return Scaffold(
      appBar: EditedAppBar(
          TitlePadding: DanPadding,
          BarIcon: Icons.list_alt,
          Title: title,
          AppbarHeight: AppbarHeight),
      body: const RequestList(),
    );
  }
}

class RequestList extends StatefulWidget {
  const RequestList({Key? key}) : super(key: key);

  @override
  State<RequestList> createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  @override
  Widget build(BuildContext context) {
    if (request.length == 0) {
      return Center(
        child: Image.asset(
          'images/wastebasket-objects.gif',
          width: 100,
          height: 100,
        ),
      );
    } else {
      return ListView.builder(
        itemCount: request.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(request[index]));
        },
      );
    }
  }
}
