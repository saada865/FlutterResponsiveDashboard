import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard(
      {Key? key,
      required this.mySvgPic,
      required this.myTitle,
      required this.mySubTitle,
      required this.myGbs})
      : super(key: key);

  final String mySvgPic, myTitle, myGbs;
  final int mySubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      height: 70,
      margin: EdgeInsets.all(7.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(
            width: 1,
            color: primaryColor.withOpacity(0.15),
          )),
      child: ListTile(
        //contentPadding: EdgeInsets.all(2.0),
        leading: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(mySvgPic),
        ),
        title: Text(
          myTitle,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          mySubTitle.toString() + " Files",
          style: TextStyle(color: Colors.white.withOpacity(0.75), fontSize: 10),
        ),
        trailing: Text(
          myGbs,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
