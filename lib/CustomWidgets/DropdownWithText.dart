import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:getwidget/getwidget.dart';

import 'CustomText.dart';

class DropDownWithText extends StatelessWidget {
  DropDownWithText(
      {super.key,
      required this.items,
      required this.onChanged,
      required this.hintText,
      required this.value,
      required this.heading});

  Function(dynamic) onChanged;

  List<String> items;
  String hintText;
  String value;
  String heading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomText(
            text: heading,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          child: DropdownButtonHideUnderline(
            child: GFDropdown(
              padding: const EdgeInsets.all(15),
              border: const BorderSide(color: Colors.black12),
              value: value,
              onChanged: onChanged,
              items: items
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class DropDownWithText2 extends StatelessWidget {
  DropDownWithText2({
    super.key,
    required this.heading,
    required this.hintText,
    required this.items,
    required this.onChanged,
    required this.value,
    this.isHeadingVisible = true,
  });

  Function(dynamic) onChanged;

  List<String> items;
  String hintText;
  String value;
  String heading;
  bool isHeadingVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isHeadingVisible,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: CustomText(
                text: heading,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: 95,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey),
            ),
            child: DropdownButtonHideUnderline(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: CustomText(
                        text: heading,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: GFDropdown(
                        padding: const EdgeInsets.all(15),
                        dropdownButtonColor: Colors.transparent,
                        value: value,
                        isExpanded: true,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        icon: Icon(Icons.keyboard_arrow_down),
                        onChanged: onChanged,
                        items: items
                            .map((value) => DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                ))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
