import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyay/pages/create_account_page.dart';
import 'package:nyay/pages/login_page.dart';
import 'package:nyay/pages/main_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Welcome Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 150.w,
              image: const AssetImage(
                'assets/images/app_logo.png',
              ),
            ),
            Text(
              "Nyay",
              style: TextStyle(
                fontSize: 25.w,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Let's get started!",
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Login to proceed",
              style: TextStyle(
                fontSize: 12.w,
                // fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50.w,
              width: 200.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.blue, // Button background color
                ),
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50.w,
              width: 200.w,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountPage(),
                      ));
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30.0), // Adjust the radius as needed
                  ),
                  side: const BorderSide(
                      color: Colors.blue), // Button border color
                ),
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50.w,
              width: 200.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30.0), // Adjust the radius as needed
                  ),
                  backgroundColor: Colors.blue, // Button background color
                ),
                child: const Text('Guest Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
