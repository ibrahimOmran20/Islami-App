import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  String label;
  String hint;
  Icon icono;
  MyTextField({required this.label, required this.hint, required this.icono});
  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: label,
        hintText: hint,
        icon: icono,

      ),
    ),
  );
  }

}