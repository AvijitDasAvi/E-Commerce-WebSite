import 'package:flutter/material.dart';
import 'package:industrial_project/const/color.dart';

class CustomFiledHelper extends StatelessWidget {
  final String hintText;
  final TextInputType? keyboardType;
  final bool? secured;
  final Widget? suffixIcon;
  const CustomFiledHelper({  
    super.key, 
    required this.hintText,
    this.keyboardType,
    this.secured,
    this.suffixIcon,
    });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
                keyboardType: keyboardType,
                obscureText: secured ?? false,
                decoration: InputDecoration(
                  hintText: hintText,
                  filled: true,
                  fillColor: AppColor.filledColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent
                    ),
                  ),
                  suffixIcon: suffixIcon,
                ),
              );
  }
}