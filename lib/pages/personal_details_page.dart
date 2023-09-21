import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _aadharController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

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
          'Edit Profile',
          style: TextStyle(
            fontSize: 20.w,
            color: const Color.fromRGBO(64, 124, 226, 1),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Container(
              margin: EdgeInsets.only(right: 15.w),
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(155, 192, 255, 0.65)),
              child: Text(
                "save",
                style: TextStyle(
                  color: const Color.fromRGBO(0, 30, 97, 1),
                  fontSize: 15.w,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 250.0,
                      width: 150.0, // Replace '150.w' with the desired width
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(100.0),
                          bottomRight: Radius.circular(100.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlue.withOpacity(0.5),
                            // Light blue shadow color
                            offset: const Offset(0, 4),
                            // Adjust the shadow's offset as needed
                            blurRadius:
                                8.0, // Adjust the shadow's blur radius as needed
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 110.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(
                            'assets/images/demo_profile_image.png'), // Replace with your image
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                      controller: _firstNameController,
                      labelText: 'First Name',
                      hintText: 'Enter your first name (e.g., John)',
                    ),
                  ),
                  SizedBox(width: 20.h),
                  Expanded(
                    child: _buildTextField(
                      controller: _lastNameController,
                      labelText: 'Last Name',
                      hintText: 'Enter your last name (e.g., Doe)',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                controller: _emailController,
                labelText: 'Email',
                hintText:
                    'Enter your email address (e.g., john.doe@example.com)',
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                controller: _aadharController,
                labelText: 'Aadhar Card Number',
                hintText:
                    'Enter your Aadhar card number (e.g., 1234-5678-9012)',
              ),
              SizedBox(height: 20.h),
              _buildTextField(
                controller: _contactController,
                labelText: 'Contact Number',
                hintText: 'Enter your contact number (e.g., 123-456-7890)',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlueAccent.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _aadharController.dispose();
    _contactController.dispose();
    super.dispose();
  }
}
