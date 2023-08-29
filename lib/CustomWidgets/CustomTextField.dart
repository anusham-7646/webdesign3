import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'CustomText.dart';
import 'Screen.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.controller,
    required this.heading,
    required this.hintText,
    required this.maxLength,
    this.minLines = 1,
    this.maxLines = 5,
    this.isHeadingVisible = true,
    this.isReadOnly = false,
    this.onTap,
  });

  String heading, hintText;
  TextEditingController controller;
  int maxLength, minLines, maxLines;
  bool isHeadingVisible;
  bool isReadOnly;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: Get.size.width < 600 ? getWidth(context) * 0.8 :getWidth(context) * 0.4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: isHeadingVisible,
              child: CustomText(
                text: heading,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onTap: onTap,
            
              readOnly: isReadOnly,
              decoration: InputDecoration(
                fillColor: Colors.white,
              
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              maxLength: maxLength,
              minLines: minLines,
              maxLines: maxLines,
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
