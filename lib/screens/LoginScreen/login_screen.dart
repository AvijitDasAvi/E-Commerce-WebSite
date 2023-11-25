import 'package:flutter/material.dart';
import 'package:industrial_project/GlobalWidgets/custom_appbar.dart';
import 'package:industrial_project/const/color.dart';
import 'package:industrial_project/const/helper/custom_button.dart';
import 'package:industrial_project/const/helper/custom_filed_helper.dart';
import 'package:industrial_project/screens/BottomNavBar/bottom_nav_bar.dart';
import 'package:industrial_project/screens/RegisterScreen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                'Login Here',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primaryColor
                ),
              ),
              const Text(
                "Welcome back you've\nbeen missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
                ],
              ),
              Column(
                children: [
                  const CustomFiledHelper(hintText: 'Email',),
              const SizedBox(height: 15,),
              CustomFiledHelper(
                hintText: 'Password',
                secured: true,
                suffixIcon: IconButton(
                  onPressed: (){
                  }, 
                  icon: Icon(Icons.visibility)
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot your password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              CustomButton(
                buttonText: 'Sign In',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> BottomNavBar()));
                },
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterScreen()));
                },
                child: Text(
                  'Create new account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}