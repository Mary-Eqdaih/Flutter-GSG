import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
     this.labelText,
    this.isPassword=false,
    required this.controller,
    this.keyboardType,
    this.validator

  });
  final String? labelText;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextFormField(
        validator: validator,

        keyboardType: keyboardType,
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          filled: true,
          fillColor:  Colors.grey.shade100,
          labelStyle: TextStyle(fontSize: 11),
          labelText: labelText,


          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff827BEB)),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(

            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
