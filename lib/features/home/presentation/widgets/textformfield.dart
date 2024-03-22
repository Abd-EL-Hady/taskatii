import 'package:flutter/material.dart';

// ignore: camel_case_types
class textform extends StatelessWidget {
  const textform({
    super.key,
    this.icon,
    required this.hinttext,
  });
  final IconData? icon;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(icon),
        hintText: hinttext,
      ),
    );
  }
}
