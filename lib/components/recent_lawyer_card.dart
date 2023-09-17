import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentLawyerCard extends StatelessWidget {
  const RecentLawyerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          width: 362.w,
          height: 100.w,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 362,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFF407CE2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 27,
                child: Text(
                  'Advocate Ritu Sharma',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    height: 0.08,
                  ),
                ),
              ),
              Positioned(
                left: 272,
                top: 65,
                child: Text(
                  'Rs. 80,000',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 36,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Property',
                        style: TextStyle(
                          color: Color(0xFFE0EAF9),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFFE0EAF9),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '+ 3 more',
                        style: TextStyle(
                          color: Color(0xFFE0EAF9),
                          fontSize: 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 14,
                child: Container(
                  width: 36,
                  height: 36,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -5.68,
                        top: 0,
                        child: Container(
                          width: 47.37,
                          height: 71.05,
                          decoration: BoxDecoration(
                              image: DecorationImage(

                                image: AssetImage(
                                    'assets/images/lawyers_profile/ritu_sharma.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 226,
                top: 15,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '(220 reviews)',
                        style: TextStyle(
                          color: Color(0xFFE0EAF9),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(width: 2),
                      // Container(
                      //   width: 14,
                      //   height: 14,
                      //   clipBehavior: Clip.antiAlias,
                      //   decoration: BoxDecoration(),
                      //   child: Stack(children: [
                      //       ,
                      //       ]),
                      // ),
                      const SizedBox(width: 2),
                      Text(
                        '4.8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: 65,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Container(
                      //   width: 16,
                      //   height: 16,
                      //   clipBehavior: Clip.antiAlias,
                      //   decoration: BoxDecoration(),
                      //   child: Stack(children: [
                      //
                      //       ]),
                      // ),
                      const SizedBox(width: 4),

                      Icon(Icons.access_time,color: Colors.white,size: 15,),
                      Text(
                        '16:00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 65,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   width: 14,
                      //   height: 15,
                      //   clipBehavior: Clip.antiAlias,
                      //   decoration: BoxDecoration(),
                      //   child: Stack(children: [
                      //       ,
                      //       ]),
                      // ),
                      const SizedBox(width: 5),
                      Icon(Icons.calendar_month,color: Colors.white,size: 15,),
                      Text(
                        '23 Mar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
