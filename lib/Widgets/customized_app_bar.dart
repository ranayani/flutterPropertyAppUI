import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget customizedAppBar({String title = ""}) => AppBar(
      leading: const BackButton(
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
      ),
      backgroundColor: Colors.white,
    );
