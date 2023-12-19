import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    required this.text,
  });
  int text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 44,
            width: 325,
            child: Center(
              child: Text(
                'San: $text',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
