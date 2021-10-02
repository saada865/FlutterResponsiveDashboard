import 'package:flutter/material.dart';
import '../components/storage_info_card.dart';
import '/screens/constants.dart';
import '../components/chart.dart';
//import '../../constants.dart';

class storage extends StatelessWidget {
  const storage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: secondaryColor),
      //height: 500,
      //color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              "Storage Details",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Chart(),
          StorageInfoCard(
              myTitle: "Documents Files",
              mySubTitle: 1328,
              mySvgPic: "Assets/icons/Documents.svg",
              myGbs: "1.3 Gb"),
          StorageInfoCard(
              mySvgPic: "Assets/icons/media.svg",
              myTitle: "Media Files",
              mySubTitle: 1328,
              myGbs: "1.3Gb"),
          StorageInfoCard(
              mySvgPic: "Assets/icons/folder.svg",
              myTitle: "Other Files",
              mySubTitle: 1328,
              myGbs: "1.3 Gb"),
          StorageInfoCard(
              mySvgPic: "Assets/icons/unknown.svg",
              myTitle: "Unknown",
              mySubTitle: 140,
              myGbs: "1.3GB")
        ],
      ),
    );
  }
}
