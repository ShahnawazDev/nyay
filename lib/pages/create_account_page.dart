import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nyay/pages/lawyer_main_page.dart';
import 'package:nyay/pages/login_page.dart';
import 'package:nyay/pages/main_page.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key,required this.isLawyerSelected});

  bool isLawyerSelected;

  @override
  Widget build(BuildContext context) {
    Color textFieldColor = Color.fromRGBO(217, 217, 217, 0.3);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Create New Account',
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.blue,
            fontSize: 17.w,
          ),
          elevation: 0,
          backgroundColor: Colors.white10,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30.w),
              Text(
                'Full Name',
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your full name',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Text(
                'Mobile Number',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.w),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey),
                    color: textFieldColor),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    hintText: 'Enter your phone number',
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
                            builder: (context) => isLawyerSelected?LawyerMainPage(): const MainPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius as needed
                      ),
                      backgroundColor: Colors.blue, // Button background color
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(isLawyerSelected: isLawyerSelected,),
                              ));
                        },
                        child: Text("Sign In"))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
