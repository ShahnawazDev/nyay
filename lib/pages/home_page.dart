import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/components/recent_lawyer_card.dart';
import 'package:nyay/components/my_search_bar.dart';
import 'package:nyay/pages/lawyer_list_page.dart';

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
                      style: TextStyle(color: Colors.grey, fontSize: 17.w),
                    ),
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
          const MySearchBar(),
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
        ],
      ),
    ));
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.text,required this.cardIndex});

  final String text;
  final int cardIndex;

  static Map<int, Widget> destinationPages = {
    0: LawyerListPage(),
    1: LawyerListPage(),
    2: LawyerListPage(),
    3: LawyerListPage(),
    // Add more categories and corresponding pages here
  };

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          if (destinationPages.containsKey(cardIndex)) {
            // Navigator.of(context).push(destinationPages[cardIndex]!,
            Navigator.push(context,MaterialPageRoute(
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
