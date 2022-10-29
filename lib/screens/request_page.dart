// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:untitled2/components/sliver_contents.dart';
import 'package:flutter/material.dart';

class Request_Reason extends StatefulWidget {
  const Request_Reason({Key? key}) : super(key: key);

  @override
  State<Request_Reason> createState() => _Request_ReasonState();
}

class _Request_ReasonState extends State<Request_Reason> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF349873),
            leading: Icon(Icons.arrow_back),
            // title: Text('Dan Energy Ethiopia'),
            actions: [
              Image(
                image: AssetImage('images/edited-logo.png'),
              ),
            ],
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: true,
              title: Text(
                'Dan Energy Ethiopia',
                style: TextStyle(letterSpacing: 0.2),
              ),
            ),
            pinned: true,
          ),
          Sliver_Contents(
            text: ('Request Reason'),
            container: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Request Reason',
                  contentPadding: EdgeInsets.all(14),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
          ),
          Sliver_Contents(
            text: 'Add Your Evidence',
            container: Column(
              children: [
                Container(
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
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
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
          )
        ],
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
