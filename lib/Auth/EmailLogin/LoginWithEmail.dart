import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/EmailLogin/LoginBody.dart';
import 'package:groceries_app_ui/Components/TopGradientContainer.dart';

import '../../Components/TopGradientImageContainer.dart';
import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../SignIns/SignIn.dart';
class LoginWithEmail extends StatefulWidget {
  static String routeName = "/LoginWithEmail";

  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
 return  WillPopScope(
     onWillPop: () async {
   Navigator.pushReplacementNamed(context, SignInScreen.routeName);
   return true;
 },
    child:  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.PinkGradient,
              AppColors.GreenGradient,

              AppColors.Whiteheading,
              AppColors.Whiteheading,
              AppColors.Whiteheading,
              AppColors.Whiteheading,
              AppColors.Whiteheading,
              AppColors.PinkGradient,
              // AppColors.Whiteheading,
              AppColors.GreenGradient,
              AppColors.GreenGradient,

            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
          children: [
            TopGradientContainer(imagepath: Images.login),
            SizedBox(height: 10,),
            Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: LoginBody(),
                )),
          ]
              ),
        ),
      )));
  }
}
