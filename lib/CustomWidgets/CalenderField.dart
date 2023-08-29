import 'package:calendar_date_picker2/calendar_date_picker2.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/text_field/gf_text_field.dart';
import 'package:webdesign3/CustomWidgets/CustomBottomSheet.dart';

class CalenderField extends StatelessWidget {
  CalenderField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  TextEditingController controller;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: GFTextField(
        onTap: () => showCalender(controller),
        readOnly: true,
        borderradius: const Radius.circular(10),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(
            Icons.calendar_month,
            color: Colors.blueGrey,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

showCalender(TextEditingController controller) {
  customBottomSheet(
    heading: "Select Date",
    child: CalendarDatePicker2(
      value: [DateTime.now()],
      config: CalendarDatePicker2Config(),
      onValueChanged: (val) => controller.text =
          "${val.first!.day}/${val.first!.month}/${val.first!.year}",
    ),
    height: Get.height * 0.4,
    isScrollControlled: false,
    headingVisible: false,
  );
}
