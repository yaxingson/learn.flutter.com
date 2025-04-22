import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext ctx) {
    return Row(
        children: List.generate(1, (index) {
      return GestureDetector(
          child: Icon(Icons.star, color: _color),
          onTap: () {
            setState(() {
              _color = _color == Colors.grey ? Colors.red : Colors.grey;
            });
          });
    }));
  }
}
