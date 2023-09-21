import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nyay/model/lawyer.dart';

class LawyerDetailsPage extends StatelessWidget {
  const LawyerDetailsPage({super.key, required this.lawyer});

  final Lawyer lawyer;

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
          'Lawyer Details',
          style: TextStyle(
            fontSize: 20.w,
            color: const Color.fromRGBO(64, 124, 226, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LawyerTile(lawyer: lawyer),
              Text(
                "Details",
                style: TextStyle(fontSize: 20.w, fontWeight: FontWeight.bold),
              ),
              Text(
                lawyer.description,
                style: TextStyle(
                  fontSize: 15.w,
                ),
              ),
              SizedBox(
                height: 20.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Working Hours",
                    style: TextStyle(
                      fontSize: 20.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All"),
                  ),
                ],
              ),
              const Row(
                children: [
                  TextTile(text: "10:00 AM", isSelected: false),
                  TextTile(text: "11:00 AM", isSelected: true),
                  TextTile(text: "12:00 PM", isSelected: false),
                ],
              ),
              // ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     Container(height: 30.w, color: Colors.blue),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date",
                    style: TextStyle(
                      fontSize: 20.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("See All"),
                  ),
                ],
              ),
              const Row(
                children: [
                  TextTile(text: "Sun 4", isSelected: true),
                  TextTile(text: "Mon 5", isSelected: false),
                  TextTile(text: "Tue 6", isSelected: false),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      const Size(300, 60),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // Adjust the radius for the desired roundness
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Book an Appointment"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextTile extends StatelessWidget {
  const TextTile({super.key, required this.text, required this.isSelected});

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 40.w,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected
            ? const Color.fromRGBO(64, 124, 226, 1)
            : const Color.fromRGBO(217, 217, 217, 0.3),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class LawyerTile extends StatelessWidget {
  final Lawyer lawyer;

  const LawyerTile({super.key, required this.lawyer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: const Color.fromRGBO(210, 235, 231, 0.3),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              lawyer.imageUrl,
              width: 60.w,
              // height: 10.w,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lawyer.name,
                    style: TextStyle(
                      fontSize: 18.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(lawyer.address),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(64, 124, 226, 0.17),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: const Color.fromRGBO(64, 124, 226, 1),
                              size: 15.w,
                            ),
                            Text(
                              lawyer.rating.toString(),
                              style: TextStyle(
                                  color: const Color.fromRGBO(64, 124, 226, 1),
                                  fontSize: 12.w),
                            ),
                          ],
                        ),
                      ),
                      // Text("Payment Rs 6000"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
