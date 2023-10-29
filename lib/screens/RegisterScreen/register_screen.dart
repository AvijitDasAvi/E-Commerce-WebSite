import 'package:flutter/material.dart';
import 'package:industrial_project/GlobalWidgets/custom_appbar.dart';
import 'package:industrial_project/const/color.dart';
import 'package:industrial_project/const/helper/custom_button.dart';
import 'package:industrial_project/const/helper/custom_filed_helper.dart';
import 'package:industrial_project/screens/LoginScreen/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor, 
                    ),
                  ),
                  Text(
                    'Create on account so you can explore all\nthe exixting jobs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CustomFiledHelper(hintText: 'Email'),
                  const SizedBox(height: 15,),
                  CustomFiledHelper(
                    hintText: 'Password',
                    secured: true,
                    suffixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.visibility)),
                    ),
                  const SizedBox(height: 15,),
                  CustomFiledHelper(
                    hintText: 'Confirm Password',
                    secured: true,
                    suffixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.visibility)),
                    ),
                    const SizedBox(height: 15,),
                  CustomButton(buttonText: 'Sign Up'),
                  const SizedBox(height: 15,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
                    },
                    child: Text(
                      'Already have an account',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 16
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}