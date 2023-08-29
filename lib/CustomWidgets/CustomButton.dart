
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:webdesign3/CustomWidgets/CustomText.dart';


class CustomButton extends StatelessWidget {
  void Function() onPressed;
  Color color;
  String text;
  bool translate;
  bool isLoading;
  int borderRadius;
  double fontSize;
  FontWeight fontWeight;
  Color fontColor;
  GFButtonShape shape;

  CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.translate = false,
    required this.isLoading,
    this.borderRadius = 5,
    required this.fontSize,
    required this.fontWeight,
    this.fontColor = Colors.white,
    this.shape = GFButtonShape.standard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    return GFButton(
            onPressed: onPressed,
            hoverElevation: 0,
            color: color, 
            shape: shape,
            child: CustomText(
              text:  text,
              fontSize: fontSize,
              color: fontColor,
              fontWeight: fontWeight,
            ),
          );
  }
}
