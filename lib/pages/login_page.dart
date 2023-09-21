import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyay/pages/create_account_page.dart';
import 'package:nyay/pages/lawyer_main_page.dart';
import 'package:nyay/pages/main_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key, required this.isLawyerSelected});

  bool isLawyerSelected ;

  @override
  Widget build(BuildContext context) {
    Color textFieldColor = const Color.fromRGBO(217, 217, 217, 0.3);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Welcome',
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.blue,
            fontSize: 20.w,
          ),
          elevation: 0,
          backgroundColor: Colors.white10,
        ),
        body: Container(
          // color: Colors.blue,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: 30.w),
              Center(
                child: Image(
                  width: 150.w,
                  image: const AssetImage(
                    'assets/images/app_logo.png',
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20.w, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.w),
              Text(
                '',
                style: TextStyle(fontSize: 20.w, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.w),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                  color: textFieldColor,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10.w),
              const Text(
                'Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.w),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                  color: textFieldColor,
                ),

                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 50.w),
              Center(
                child: SizedBox(
                  height: 50.w,
                  width: 200.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => isLawyerSelected? LawyerMainPage(): const MainPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                      ),
                      backgroundColor: Colors.blue, // Button background color
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  CreateAccountPage(isLawyerSelected: isLawyerSelected,),
                            ));
                      },
                      child: const Text("Sign Up"))
                ],
              )
            ],
          ),
        ));
  }
}
