import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon? icon;
  final String? labelText;
  final InputDecoration? decoration;
  final InputBorder? border;
  final Text;

  const CustomTextField({
    Key? key,
    this.icon,
    this.labelText,
    this.decoration,
    this.border,
    this.Text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 30,
          weight: 300,
          color: Colors.grey,
        ),
        labelText: 'Where to ? ',
        labelStyle: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),
        suffixText: 'Now',
      ),
    );
  }
}
