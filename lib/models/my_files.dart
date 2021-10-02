import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/constants.dart';
import 'package:flutter_application_1/screens/dashboard/components/my_fields.dart';

class MyFiles {
  final Color cColor;
  final double cPercentage;
  final String cSvg, cTitle, cTotalStorage;
  final int cNumOfFiles;

  const MyFiles(
      {required this.cTitle,
      required this.cTotalStorage,
      required this.cNumOfFiles,
      required this.cColor,
      required this.cPercentage,
      required this.cSvg});
}

List cList = [
  MyFiles(
      cColor: primaryColor,
      cSvg: "Assets/icons/Documents.svg",
      cPercentage: 60,
      cTitle: "Documents",
      cNumOfFiles: 1328,
      cTotalStorage: "1.9GB"),
  MyFiles(
      cColor: Color(0xFFFFA113),
      cSvg: "assets/icons/google_drive.svg",
      cPercentage: 63,
      cTitle: "Google Drive",
      cNumOfFiles: 1328,
      cTotalStorage: "2.9GB"),
  MyFiles(
      cColor: Color(0xFFA4CDFF),
      cSvg: "assets/icons/one_drive.svg",
      cPercentage: 15,
      cTitle: "One Drive",
      cNumOfFiles: 1328,
      cTotalStorage: "1GB"),
  MyFiles(
      cColor: Color(0xFF007EE5),
      cSvg: "assets/icons/drop_box.svg",
      cPercentage: 140,
      cTitle: "Documents",
      cNumOfFiles: 5328,
      cTotalStorage: "7.3GB")
];
