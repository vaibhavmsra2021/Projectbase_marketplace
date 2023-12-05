import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget navBarTabletButton(
    {required SizingInformation sizingInformation,
    required String iconImage,
    required bool isSelectedButton}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: isSelectedButton == true
                    ? Colors.white
                    : Colors.transparent,
                width: 2))),
    margin: EdgeInsets.symmetric(
        horizontal: 5),
    child: Container(
      width: 30,
      height: 30,
      child: Image.asset(
        iconImage,
        color: Colors.white,
      ),
    ),
  );
}
