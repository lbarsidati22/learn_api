// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const AppButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ));
  }
}
