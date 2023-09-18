import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/components/recent_lawyer_card.dart';
import 'package:nyay/components/my_search_bar.dart';
import 'package:nyay/pages/case_profile_page.dart';
import 'package:nyay/pages/lawyer_list_page.dart';
import 'package:nyay/pages/legal_aid_page.dart';
import 'package:nyay/pages/rehabilitation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            height: 200.w,
            decoration: BoxDecoration(
              // color: Colors.blueAccent,
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(2, 81, 216, 0.92),
                  Color.fromRGBO(97, 154, 252, 0.75)
                ], // Adjust colors as needed
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0.w),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/demo_profile_image.png'),
                        // Replace with your image asset
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Welcome",
                        style: TextStyle(color: const Color.fromRGBO(0, 30, 97, 1),fontSize: 17.w),),
                          Text(
                            "Piyush Pandey",
                            style: TextStyle(
                              fontSize: 20.w,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(FontAwesomeIcons.bell),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.circleDot,
                        color: Colors.red,
                      ),
                      Text(
                        "  Current Case",
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 30, 97, 1),
                          fontSize: 17.w,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.w,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Title",
                          style: TextStyle(color: Colors.deepPurple),),
                        Text(
                          "Robbery Case",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Name of Trial Court",
                          style: TextStyle(color: Colors.deepPurple),),
                        Text(
                          "Addl. Sessinos Judge Rajouri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Started on",
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        Text(
                          "September 23,2022",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const MySearchBar(suggestionText: 'Search the Lawyer',),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.w),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoriesCard(
                  text: "Find a Lawyer",
                  cardIndex: 0,
                ),
                CategoriesCard(
                  text: "Case Profile",
                  cardIndex: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: const Row(
              children: [
                CategoriesCard(
                  text: "Legal Aid",
                  cardIndex: 2,
                ),
                CategoriesCard(
                  text: "Rehabilitation",
                  cardIndex: 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.w),
            child: Text(
              "Recent",
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const RecentLawyerCard(),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 15.0.w),
          //   height: 90.h,
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          // ),
        ],
      ),
    ));
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard(
      {super.key, required this.text, required this.cardIndex});

  final String text;
  final int cardIndex;

  static Map<int, Widget> destinationPages = {
    0: LawyerListPage(),
    1: const CaseProfilePage(),
    2: const LegalAidPage(),
    3: const RehabilitationPage(),
    // Add more categories and corresponding pages here
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (destinationPages.containsKey(cardIndex)) {
            // Navigator.of(context).push(destinationPages[cardIndex]!,
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => destinationPages[cardIndex]!,
              ),
            );
          }
        },
        child: Card(
          color: const Color.fromRGBO(244, 244, 244, 1),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 30.0.h),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 15.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
