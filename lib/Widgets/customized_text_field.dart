import 'package:flutter/material.dart';

Widget customizedTextField({required String labelText, suffixIcon, prefixIcon, bool isPassword = false}) => 
  TextField(
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                border: const OutlineInputBorder(
                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
                 borderSide: BorderSide.none                 
                ),
                filled: true,
                fillColor: const Color.fromARGB(179, 235, 234, 234),
                labelText: labelText,
              ),
              obscureText: isPassword,
            );