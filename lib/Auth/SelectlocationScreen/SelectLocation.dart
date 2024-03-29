import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Config/strings.dart';
import 'package:groceries_app_ui/Screens/HomeScreen/HomeScreen.dart';

import '../../Components/TopGradientImageContainer.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import 'LocationScreenComponents.dart';
import 'ZoneAreaSelection.dart';
class SelectLocation extends StatefulWidget {
  static String routeName = "/SelectLocation";

  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.PinkGradient,
        AppColors.GreenGradient,
        AppColors.Whiteheading,
        AppColors.Whiteheading,
        AppColors.Whiteheading,
        AppColors.PinkGradient,
        // AppColors.Whiteheading,
        AppColors.GreenGradient,

      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GradientImageContainer(imagepath: Images.Seleclocation,
        leading: IconButton(
    
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
    
        ),
        SizedBox(height: 10,),
        ComponentsLocationScreen(),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: CityAreaPick(),
        ),
        // SizedBox(height: 15,),
      Container(
       height: 500,
      width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(
    //   gradient: LinearGradient(
    //     colors: [
    //       AppColors.PinkGradient,
    //       AppColors.GreenGradient,
    //       AppColors.PinkGradient,
    //       AppColors.Whiteheading,
    //     ],
    //     stops: [0.0, 0.3, 0.6, 1.0],
    //     begin: Alignment.topRight,
    //     end: Alignment.bottomLeft,
    //   ),
    // ),

    child: Column(
      children: [
        SizedBox(height: 20,),
        PrimaryButton(text: AppStrings.Submit, textStyle: h2size18, press: (){
          NavigatetoHome(context);
        },),
      ],
    ),
      ),
    
      ],
    ),
  ),
),

    );
  }
}
NavigatetoHome(BuildContext context){

  Navigator.pushNamed(
    context,
    HomeScreen.routeName,
  );
}
