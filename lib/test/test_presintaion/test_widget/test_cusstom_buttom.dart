// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TestCusstomButtom extends StatelessWidget {
  final Function() onTap;
  final String title;
  const TestCusstomButtom({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          12,
        )),
        backgroundColor: Colors.green,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 26,
          color: Colors.white,
        ),
      ),
    );
  }
}
