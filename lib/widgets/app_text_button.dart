import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
   AppTextButton({super.key, required this.text, this.onPressed});
  final String text;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(const Size(200, 50)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      ),
      onPressed:onPressed,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xff79A7A5),
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
