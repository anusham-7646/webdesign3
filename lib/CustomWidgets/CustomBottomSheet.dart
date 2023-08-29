import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CustomText.dart';

customBottomSheet(
    {required heading,
    required child,
    required height,
    required isScrollControlled,
    required headingVisible}) {
  return Get.bottomSheet(
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SizedBox(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: headingVisible,
              child: CustomText(
                text: heading,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(child: child),
          ],
        ),
      ),
    ),
    ignoreSafeArea: false,
    isScrollControlled: isScrollControlled,
  );
}
