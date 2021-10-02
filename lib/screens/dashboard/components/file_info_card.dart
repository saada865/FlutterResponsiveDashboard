import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '/models/my_files.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final MyFiles info;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(defaultPadding),
      height: 170,
      width: 170,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: info.cColor.withOpacity(0.1)),
                    child: SvgPicture.asset(info.cSvg),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white54,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text(
                info.cTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.5,
                    fontWeight: FontWeight.w600),
              )),
            ],
          ),
          SizedBox(height: 20),
          ProgressLine(percentage: info.cPercentage, useColor: info.cColor),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                info.cNumOfFiles.toString() + " Files",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.75),
                  fontSize: 8,
                ),
              ),
              Text(
                info.cTotalStorage,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine(
      {Key? key, required this.percentage, required this.useColor})
      : super(key: key);
  final double percentage;
  final Color useColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: useColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Container(
          height: 5,
          width: percentage,
          decoration: BoxDecoration(
              color: useColor, borderRadius: BorderRadius.circular(8)),
        )
      ],
    );
  }
}
