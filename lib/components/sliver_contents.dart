import 'package:flutter/material.dart';

class Sliver_Contents extends StatelessWidget {
  final String text;
  final Widget container;
  Sliver_Contents({required this.text, required this.container});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(text)),
          container,
          const SizedBox(
            child: Divider(
              height: 4,
            ),
          ),
        ],
      ),
    );
  }
}
