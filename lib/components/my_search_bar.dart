
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.suggestionText
  });
  final String suggestionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.w),
      padding: EdgeInsets.all(15.w),
      height: 46.h,
      width: 350.w,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(217, 217, 217, 0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.lightBlueAccent,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              child: Text(
                suggestionText,
                style:
                TextStyle(color: Colors.lightBlueAccent, fontSize: 17.w),
              )),
          const Icon(
            FontAwesomeIcons.microphone,
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
