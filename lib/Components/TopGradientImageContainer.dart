import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';

class GradientImageContainer extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;

  const GradientImageContainer({Key? key, this.leading,

    required this.imagepath,
  }) : super(key: key);

  final String imagepath;
  @override
  Size get preferredSize => Size.fromHeight(500.0);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 200,
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
      child: Stack(
        children: [
          AppBar(
            leading: leading,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 30,top:50),
              child: Image.asset(imagepath)
            ),
          ),
        ],
      ),
    );
  }
}
