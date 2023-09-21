import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyay/pages/create_account_page.dart';
import 'package:nyay/pages/login_page.dart';
import 'package:nyay/pages/main_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isLawyerSelected = false;

  void _toggleSelection() {
    setState(() {
      isLawyerSelected = !isLawyerSelected;
    });
  }

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
              "Choose User",
              style: TextStyle(
                fontSize: 20.w,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 100.h,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 100.w, vertical: 10.h), // 100% screen width
                  child: Stack(
                    children: isLawyerSelected
                        ? [_buildClientCircle(), _buildLawyerCircle()]
                        : [_buildLawyerCircle(), _buildClientCircle()],
                  ),
                ),
              ),
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
                        builder: (context) => LoginPage(
                          isLawyerSelected: isLawyerSelected,
                        ),
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
                        builder: (context) => CreateAccountPage(
                          isLawyerSelected: isLawyerSelected,
                        ),
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
            // const SizedBox(height: 20),
            // SizedBox(
            //   height: 50.w,
            //   width: 200.w,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => const MainPage(),
            //           ));
            //     },
            //     style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(
            //             30.0), // Adjust the radius as needed
            //       ),
            //       backgroundColor: Colors.blue, // Button background color
            //     ),
            //     child: const Text('Guest Login'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Positioned _buildClientCircle() {
    return Positioned(
      left: 80.0,
      child: GestureDetector(
        onTap: () {
          if (isLawyerSelected) {
            _toggleSelection();
          }
        },
        child: Container(
          width: 80.h,
          height: 80.h,
          decoration: BoxDecoration(
            color: !isLawyerSelected
                ? Color.fromRGBO(64, 124, 226, 1)
                : Color.fromRGBO(242, 242, 242, 1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              'Client',
              style: TextStyle(
                color: isLawyerSelected
                    ? Color.fromRGBO(19, 78, 156, 1)
                    : Colors.white,
                fontSize: 12.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Positioned _buildLawyerCircle() {
    return Positioned(
      left: 0,
      child: GestureDetector(
        onTap: () {
          if (!isLawyerSelected) {
            _toggleSelection();
          }
        },
        child: Container(
          width: 80.0.h,
          height: 80.0.h,
          decoration: BoxDecoration(
            color: isLawyerSelected
                ? Color.fromRGBO(64, 124, 226, 1)
                : Color.fromRGBO(242, 242, 242, 1),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              'Lawyer',
              style: TextStyle(
                color: !isLawyerSelected
                    ? Color.fromRGBO(19, 78, 156, 1)
                    : Colors.white,
                fontSize: 12.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
