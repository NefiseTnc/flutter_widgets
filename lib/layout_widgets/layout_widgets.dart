import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  LayoutWidgets({Key? key}) : super(key: key);

  final String appbarTitle = 'Layout Widgets';
  final List ornekListem = [
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
    "Liste İçerik 1",
    "Liste İçerik 2",
    "Liste İçerik 3",
    "Liste İçerik 4",
    "Liste İçerik 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appbarTitle)),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: 20),
          _buildColumn(),
          const SizedBox(height: 20),
          _buildRow(),
          const SizedBox(height: 20),
        ],
      )),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.up,
      children: [
        Container(color: Colors.pink, width: 100, height: 100),
        Container(color: Colors.yellow, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.purple, width: 100, height: 100),
      ],
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(color: Colors.pink, width: 100, height: 100),
        Container(color: Colors.yellow, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.purple, width: 100, height: 100),
      ],
    );
  }
}
