// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../components/reusable_widgets.dart';
import '../constants.dart';

class Request_Reason extends StatefulWidget {
  const Request_Reason({Key? key}) : super(key: key);

  @override
  State<Request_Reason> createState() => _Request_ReasonState();
}

class _Request_ReasonState extends State<Request_Reason> {
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
    return Scaffold(
      //drawer: Drawer(),
      appBar: EditedAppBar(
          TitlePadding: DanPadding,
          BarIcon: Icons.edit_note_sharp,
          Title: 'Request Reason',
          AppbarHeight: AppbarHeight),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    padding: EdgeInsets.only(left: 20.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Request Reason',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 5.0),
                    child: DecoratedTextField(
                        hint: 'Request Reason',
                        Ktype: TextInputType.text,
                        secure: false),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    padding: EdgeInsets.only(left: 20.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Add Your Evidence',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      padding: EdgeInsets.all(11),
                      width: 80,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: RoundIconButton(
                        boxConstraints:
                            BoxConstraints(minWidth: 88.0, minHeight: 50.0),
                        widght: Icon(
                          Icons.add,
                          color: Color(0xFF349873),
                        ),
                        circleBorder: CircleBorder(),
                        color: Colors.grey,
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
                            'Send',
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
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
//final Widget widgets;
  final boxConstraints;
  final circleBorder;
  final Color color;
  final Widget widght;

  RoundIconButton(
      {this.boxConstraints,
      this.circleBorder,
      required this.color,
      required this.widght});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: widght,
      elevation: 6.0,
      constraints:
          boxConstraints, //BoxConstraints(minWidth: 88.0, minHeight: 50.0),
      shape: circleBorder, //CircleBorder(),
      fillColor: color, //Colors.grey,
      onPressed: () {},
    );
  }
}

//constraints = const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
