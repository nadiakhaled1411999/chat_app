import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(

        content: Center(
            child: Text(
      message,
      style: const TextStyle(
        color: kPrimaryColor,
      ),
    )),duration: const Duration(seconds: 3)),);

  }