import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  double fontSize;
  Color? color;
  int maxLines, minLines;
  TextAlign textAlign;
  bool translate;

  CustomText( {
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 13,
    this.color,
    this.maxLines = 1,
    this.minLines = 1,
    this.textAlign = TextAlign.start,
    this.translate = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      

    return FutureBuilder(
      
      builder: (context, snap) {
        if (snap.hasData && translate) {
          return Text(
            snap.data.toString(),
            style: const TextStyle().copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
              textBaseline: TextBaseline.alphabetic,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: maxLines,
            textAlign: textAlign,
          );
        } else {
          return Text(
            text,
            style: const TextStyle().copyWith(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
              textBaseline: TextBaseline.alphabetic,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: textAlign,
            maxLines: maxLines,
          );
        }
      },
    );
  }
}

class LanguageController extends GetxController {
  RxString languageCode = 'en'.obs;
}
