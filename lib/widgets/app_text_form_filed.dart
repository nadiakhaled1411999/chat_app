import 'package:flutter/material.dart';

class AppTextFormFiled extends StatelessWidget {
  const AppTextFormFiled({super.key, this.hintText, this.onChanged, this.obscureText=false});
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value!.isEmpty) {
          return "field is required";
        }
        return null;
      },
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          fillColor: Colors.transparent,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 220, 195, 160),
            ),
          )),
    );
  }
}
