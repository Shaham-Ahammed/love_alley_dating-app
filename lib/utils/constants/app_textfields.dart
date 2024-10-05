import 'package:flutter/material.dart';
import 'package:love_ally/utils/constants/mediaquery.dart';

class Inputfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String hinttext;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Icon? icon;
  const Inputfield({
    this.controller,
    super.key,
    this.label,
    required this.hinttext,
    this.keyboardType,
    this.validator,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: mediaquerywidth(0.05, context),
          right: mediaquerywidth(0.05, context)),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(54, 62, 5, 61))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(54, 62, 5, 61))),
          fillColor: const Color.fromRGBO(54, 20, 57, 1),
          filled: true,
          labelText: label,
          hintText: hinttext,
          suffixIcon: icon,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 183, 177, 177)),
          labelStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
