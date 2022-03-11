import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTextField {

  TextFormField textFormField(
      { Function ? onTapFunction, String ? hint, TextEditingController ? controller, IconData ? icon, String ? errorText}) {
    return TextFormField(
      controller: controller,
      onTap:() {
        onTapFunction!();
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        errorText: errorText,
        suffixIcon: Icon(icon),
        hintText: hint ?? "",
        fillColor: Color(0xffF3F3F3),
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );
  }
}