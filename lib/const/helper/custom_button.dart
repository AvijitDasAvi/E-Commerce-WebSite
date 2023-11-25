import 'package:flutter/material.dart';
import 'package:industrial_project/const/color.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
                  width: MediaQuery.sizeOf(context).width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primaryColor,  
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 12
                    ),
                    child: Center(
                      child: Text(
                        buttonText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
    );
  }
}