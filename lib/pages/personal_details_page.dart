import 'package:flutter/material.dart';

class PersonalDetailsPage extends StatelessWidget {
  const PersonalDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PersonalDetails();
  }
}

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 430,
            height: 932,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(-0.00, -1.00),
                end: const Alignment(0, 1),
                colors: [const Color(0xFF407CE2), Colors.white.withOpacity(0)],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 26.72,
                  top: 68,
                  child: Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(children: [
                    ]),
                  ),
                ),
                Positioned(
                  left: 487.82,
                  top: 616.88,
                  child: Container(
                    width: 376.55,
                    height: 93,
                    decoration: ShapeDecoration(
                      color: const Color(0x4CD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 501.82,
                  top: 628.38,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/70x70"),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                const Positioned(
                  left: 598.78,
                  top: 640.88,
                  child: Text(
                    'Dr.Wanitha',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.05,
                      letterSpacing: -0.40,
                    ),
                  ),
                ),
                const Positioned(
                  left: 816.10,
                  top: 629.88,
                  child: Text(
                    '12.50',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
                const Positioned(
                  left: 598.78,
                  top: 671.88,
                  child: Text(
                    'Worem consectetur adipiscing elit.',
                    style: TextStyle(
                      color: Color(0xFF407CE2),
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
                Positioned(
                  left: 823.10,
                  top: 667.88,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF407CE2),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                const Positioned(
                  left: 829.60,
                  top: 670.88,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),

                Positioned(
                  left: -2.49,
                  top: 0,
                  child: Container(
                    width: 430,
                    height: 44,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 377,
                          top: 17,
                          child: Container(
                            width: 26.60,
                            height: 12.50,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Opacity(
                                    opacity: 0.40,
                                    child: Container(
                                      width: 26.60,
                                      height: 12.50,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://via.placeholder.com/27x12"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 330,
                          top: 18,
                          child: Container(
                            width: 18.15,
                            height: 11,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/18x11"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 13.86,
                          top: 13,
                          child: Text(
                            '19:02',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                              letterSpacing: -0.36,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 845.82,
                  child: Container(
                    width: 430,
                    height: 83,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 342.46,
                          top: 16.88,
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF407CE2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 253.82,
                          top: 29.12,
                          child: Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: const Stack(children: [
                            ]),
                          ),
                        ),
                        Positioned(
                          left: 50.54,
                          top: 29.12,
                          child: Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: const Stack(children: [
                            ]),
                          ),
                        ),
                        Positioned(
                          left: 152.18,
                          top: 29.88,
                          child: Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                          ),
                        ),
                        Positioned(
                          left: 355.46,
                          top: 29.88,
                          child: Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: const Stack(children: [

                                ]),
                          ),
                        ),
                        Positioned(
                          left: 153.17,
                          top: 31.13,
                          child: Container(
                            width: 21.24,
                            height: 20.74,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/21x21"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 137.51,
                  top: 0,
                  child: Container(
                    width: 150,
                    height: 289,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.6499999761581421),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(75),
                          bottomRight: Radius.circular(75),
                        ),
                      ),
                      shadows: [
                        const BoxShadow(
                          color: Color(0xFF6898E6),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 154.51,
                  top: 152,
                  child: Container(
                    width: 116,
                    height: 116,
                    decoration: const ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.06, -1.00),
                        end: Alignment(0.06, 1),
                        colors: [Color(0xFF407CE2), Color(0x0A5A8FE5)],
                      ),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26FFFFFF),
                          blurRadius: 12,
                          offset: Offset(-5, -5),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 12,
                          offset: Offset(5, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 315.62,
                  child: Container(
                    width: 340,
                    height: 146,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 146,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x60EFECE8)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0x0C000000),
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 17.65,
                          child: SizedBox(
                            width: 115,
                            height: 16.61,
                            child: Text(
                              'Profile Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 61,
                          child: SizedBox(
                            width: 95,
                            height: 17,
                            child: Text(
                              'First Name',
                              style: TextStyle(
                                color: Color(0xFF407CE2),
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 105,
                          child: SizedBox(
                            width: 95,
                            height: 17,
                            child: Text(
                              'Last Name',
                              style: TextStyle(
                                color: Color(0xFF407CE2),
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 78,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF767776),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 123,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF767776),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 488.25,
                  child: Container(
                    width: 340,
                    height: 82,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 82,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x60EFECE8)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0x0C000000),
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 17.65,
                          child: SizedBox(
                            width: 115,
                            height: 16.61,
                            child: Text(
                              'Email',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 64,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF767776),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 609.88,
                  child: Container(
                    width: 340,
                    height: 82,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 82,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x60EFECE8)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0x0C000000),
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 18,
                          child: SizedBox(
                            width: 149,
                            height: 16,
                            child: Text(
                              'Aadhaar Number',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 64,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF767776),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 727.60,
                  child: Container(
                    width: 340,
                    height: 82,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 82,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0x60EFECE8)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: [
                                const BoxShadow(
                                  color: Color(0x0C000000),
                                  blurRadius: 4,
                                  offset: Offset(4, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 16,
                          top: 18,
                          child: SizedBox(
                            width: 149,
                            height: 16,
                            child: Text(
                              'Contact Number',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 64,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF767776),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 336.11,
                  top: 77.39,
                  child: Container(
                    width: 65,
                    height: 42,
                    decoration: ShapeDecoration(
                      color: const Color(0xA09BC0FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 352.11,
                  top: 90.39,
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Color(0xFF001D60),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
                Positioned(
                  left: 154.51,
                  top: 152,
                  child: Container(
                    width: 116,
                    height: 116,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/demo_profile_image.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 243.06,
                  top: 242.31,
                  child: Container(
                    width: 20.64,
                    height: 20.45,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 20.64,
                            height: 20.45,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFAFCFF),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5.59,
                          top: 5.59,
                          child: Container(
                            width: 9.46,
                            height: 9.28,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/9x9"),
                                fit: BoxFit.fill,
                              ),
                            ),
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
      ),
    );
  }
}