import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyay/pages/lawyer_personal_details_page.dart';
import 'package:nyay/pages/login_page.dart';
import 'package:nyay/pages/personal_details_page.dart';

class LawyerProfilePage extends StatelessWidget {
  const LawyerProfilePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20.w,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/lawyers_profile/shankar_mishra.jpeg'),
            // Replace with your image asset
          ),
          SizedBox(height: 10.h),
          Text(
            'Advocate Shankar Mishra', // Replace with the user's name
            style: TextStyle(
              fontSize: 22.w,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                _buildProfileListItem(Icons.history, 'History', context),
                _buildProfileListItem(
                    Icons.person, 'Personal Details', context),
                _buildProfileListItem(Icons.location_on, 'Location', context),
                _buildProfileListItem(Icons.payment, 'Payment Method', context),
                _buildProfileListItem(Icons.settings, 'Settings', context),
                _buildProfileListItem(Icons.help, 'Help', context),
                _buildProfileListItem(Icons.logout, 'Logout', context,
                    showArrow: false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileListItem(
      IconData icon, String title, BuildContext context,
      {bool showArrow = true}) {
    return InkWell(
      onTap: () {
        // Handle navigation to the individual page here
        if (title == 'History') {
          // Navigate to History page
        } else if (title == 'Personal Details') {
          // Navigate to Personal Details page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LawyerPersonalDetailsPage(),
            ),
          );
        } else if (title == 'Location') {
          // Navigate to Location page
        } else if (title == 'Payment Method') {
          // Navigate to Payment Method page
        } else if (title == 'Settings') {
          // Navigate to Settings page
        } else if (title == 'Help') {
          // Navigate to Help page
        } else if (title == 'Logout') {
          _showLogoutConfirmationDialog(context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(210, 235, 231, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    icon,
                    color: const Color.fromRGBO(64, 124, 226, 1),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (showArrow)
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
          ],
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Perform the logout operation
                // For demonstration purposes, we simply pop the current screen
                // You should implement your actual logout logic here
                Navigator.of(context).pop(); // Close the dialog
                // Navigator.of(context).pop(); // Pop the current screen

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  LoginPage(isLawyerSelected: false,),
                  ),
                );
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }}
