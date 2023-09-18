import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          size: 25.w,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20.w,
            color: const Color.fromRGBO(64, 124, 226, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(214, 227, 248, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 1,
                    child: Icon(FontAwesomeIcons.bell),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "April 2023",
                          style: TextStyle(
                            fontSize: 17.w,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Case XX324",
                          style: TextStyle(
                            fontSize: 11.w,
                            color: Colors.black38
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Text('15 Min'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
