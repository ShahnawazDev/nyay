import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nyay/components/my_search_bar.dart';
import 'package:nyay/pages/add_new_case_page.dart';
import 'package:nyay/pages/case_profile_page.dart';
import 'package:nyay/pages/chat_bot_page.dart';
import 'package:nyay/pages/lawyer_profile_page.dart';
import 'package:nyay/pages/legal_aid_page.dart';
import 'package:nyay/pages/notification_page.dart';
import 'package:nyay/pages/profile_page.dart';
import 'package:nyay/pages/rehabilitation_page.dart';

class LawyerMainPage extends StatefulWidget {
  const LawyerMainPage({super.key});

  @override
  State<LawyerMainPage> createState() => _LawyerMainPage();
}

class _LawyerMainPage extends State<LawyerMainPage> {

  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  // Create a PageController to manage pages
  final PageController _pageController = PageController();

  // Define your pages
  final List<Widget> _pages = const [
    LawyerHomePage(),
    AddNewCase(),
    ChatBotPage(),
    LawyerProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(207, 223, 252, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 20,
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: const Color.fromRGBO(64, 124, 226, 1),
              color: Colors.black,
              tabs:  const [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                ),
                GButton(
                  icon: FontAwesomeIcons.plus,
                  text: 'Add',
                ),
                GButton(
                  icon: FontAwesomeIcons.comment,
                  text: 'Chatbot',
                ),
                GButton(
                  icon: FontAwesomeIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                  // Use the PageController to navigate to the selected page
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class LawyerHomePage extends StatelessWidget {
  const LawyerHomePage({
    super.key,
  });

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
                            AssetImage('assets/images/lawyers_profile/shankar_mishra.jpeg'),
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
                                style: TextStyle(
                                    color: const Color.fromRGBO(0, 30, 97, 1),
                                    fontSize: 17.w),
                              ),
                              Text(
                                "Advocate Shankar Mishra",
                                style: TextStyle(
                                  fontSize: 20.w,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const NotificationPage(),
                                ),
                              );
                            },
                            icon: const Icon(FontAwesomeIcons.bell)),

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
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                            Text(
                              "Criminal Defence Lawyer",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Name of winning cases",
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                            Text(
                              "15",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              " Ratings",
                              style: TextStyle(color: Color.fromRGBO(0, 30, 97, 1)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(64, 124, 226, 0.17),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(

                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidStar,
                                    color: const Color.fromRGBO(253,229,11,1),
                                    size: 15.w,
                                  ),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "4.7",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.w),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const MySearchBar(
                suggestionText: 'Search a Case',
              ),
              SizedBox(height: 30.w,),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.w),
              //   child: Text(
              //     "Categories",
              //     style: TextStyle(
              //       fontSize: 20.w,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.all(15.w),
                padding: EdgeInsets.symmetric(horizontal: 15.0.w,vertical: 10.w),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(33, 103, 222, 0.31),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CategoriesCard(
                      text: "My \nClients",
                      cardIndex: 0,
                    ),
                    CategoriesCard(
                      text: "My Appointments",
                      cardIndex: 1,
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
  const CategoriesCard(
      {super.key, required this.text, required this.cardIndex});

  final String text;
  final int cardIndex;

  static Map<int, Widget> destinationPages = {
    // 0: LawyerListPage(),
    0: const CaseProfilePage(),
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
