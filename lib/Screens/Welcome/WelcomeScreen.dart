import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SignIns/SignIn.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Screens/Welcome/welcomebody.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Config/strings.dart';

class WelcomeScreen extends StatefulWidget {
  static String routeName = "/WelcomeScreen";

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.bgwelcomescreen,),
              fit: BoxFit.fill,
            ),
          ),
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top:300),
                  child: Column(
        
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                    children: [
                      Image.asset(Images.logo,height:56.36 ,width:48.47 ,),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
        
                        AppStrings.welcomeTitle,
                        style:  h1size48,
        
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(AppStrings.welcomecontent,
                          style:h2size16,
                      ),
                      SizedBox(
                        height:20 ,
                      ),
                      Center(
                        child: PrimaryButton(text: AppStrings.getStarted,
                          textStyle: h2size16,
                          press: () {
                            NavigateTo(context);
                          },
        
        
        
                        ),
                      )
        
        
                    ],
        
                  ),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
void NavigateTo(BuildContext context) {
  Navigator.pushNamed(
    context,
    SignInScreen.routeName,
  );
}
