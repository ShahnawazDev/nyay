import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/components/my_search_bar.dart';

class LegalAidPage extends StatefulWidget {
  const LegalAidPage({super.key});

  @override
  State<LegalAidPage> createState() => _LegalAidPageState();
}

class _LegalAidPageState extends State<LegalAidPage> {
  List<RehabilitationActivity> activities = [];

  @override
  void initState() {
    super.initState();
    loadActivities();
  }

  Future<void> loadActivities() async {
    final String jsonData =
        await rootBundle.loadString('assets/json/ipc_sections.json');
    final List<dynamic> jsonList = json.decode(jsonData);
    final List<RehabilitationActivity> loadedActivities = [];

    for (final dynamic item in jsonList) {
      final Map<String, dynamic> activityMap = item as Map<String, dynamic>;
      final String title = activityMap['title'] as String;
      final String description = activityMap['description'] as String;

      loadedActivities.add(RehabilitationActivity(
        title: title,
        description: description,
      ));
    }

    setState(() {
      activities = loadedActivities;
    });
  }

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
          'Know the IPC Sections',
          style: TextStyle(
            fontSize: 20.w,
            color: const Color.fromRGBO(64, 124, 226, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MySearchBar(
              suggestionText: 'Search IPC sections',
            ),
            for (final RehabilitationActivity activity in activities)
              RehabilitationActivityCard(
                title: activity.title,
                description: activity.description,
              ),
          ],
        ),
      ),
    );
  }
}

class RehabilitationActivity {
  final String title;
  final String description;

  RehabilitationActivity({
    required this.title,
    required this.description,
  });
}

// class RehabilitationActivityCard extends StatelessWidget {
//   const RehabilitationActivityCard({
//     super.key,
//     required this.title,
//     required this.description,
//   });
//   final String title;
//   final String description;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 15.w),
//       child: Card(
//         color: const Color.fromRGBO(214, 227, 248, 1),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(25.0),
//         ),
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: 15.w),
//           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
//           height: 90.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 15.w,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Flexible( // Wrap the description in a Flexible widget
//                     child: Text(
//                       description,
//                       style: TextStyle(
//                         fontSize: 13.w,
//                         color: Colors.cyan,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               FaIcon(
//                 FontAwesomeIcons.chevronRight,
//                 color: Colors.blue,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
        color: const Color.fromRGBO(214, 227, 248, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
          height: 90.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
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
                    Wrap(
                      // Use Wrap for the description text
                      children: [
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 13.w,
                            color: Colors.cyan,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
