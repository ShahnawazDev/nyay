import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/components/my_search_bar.dart';

class CaseProfilePage extends StatelessWidget {
  const CaseProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            size: 25.w,
            color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            'Your Cases',
            style: TextStyle(
              fontSize: 20.w,
              color: const Color.fromRGBO(64, 124, 226, 1),
            ),
          ),

        ),
        body: const Column(
          children: [
            MySearchBar(suggestionText: 'Search cases',),
            RehabilitationActivityCard(title: "Case XX002",description: "",),
            RehabilitationActivityCard(title: "Case XX012",description: "",),
            RehabilitationActivityCard(title: "Case XX062",description: "",),
            RehabilitationActivityCard(title: "Case XX082",description: "",),

          ],
        ));
  }
}

class RehabilitationActivityCard extends StatelessWidget {
  const RehabilitationActivityCard({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Card(
        // color: Colors.white10,
        color:const Color.fromRGBO(214,227,248, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.w),
            height: 90.w,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                          fontSize: 13.w, color: Colors.cyan),
                    )
                  ],
                ),
                const FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.blue,
                )
              ],
            )),
      ),
    );
  }
}
