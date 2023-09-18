import 'package:flutter/material.dart';

class AddNewCase extends StatelessWidget {
  const AddNewCase({super.key});

  @override
  Widget build(BuildContext context) {
    return const CaseDetails();
  }
}

class CaseDetails extends StatelessWidget {
  const CaseDetails({super.key});

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
                        image: AssetImage('assets/images/demo_profile_image.png'),
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
                                          image: NetworkImage("https://via.placeholder.com/27x12"),
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
                                image: NetworkImage("https://via.placeholder.com/18x11"),
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  top: -46.11,
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
                const Positioned(
                  left: 57.10,
                  top: 266.75,
                  child: SizedBox(
                    width: 315.79,
                    height: 16.61,
                    child: Text(
                      'Please enter your case Details here',
                      style: TextStyle(
                        color: Color(0xFF221F1F),
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
                  left: 45,
                  top: 385.44,
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
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          left: 21.72,
                          top: 20.44,
                          child: SizedBox(
                            width: 184.84,
                            child: Text(
                              'Sections of the law',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
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
                                  color: Color(0xFF565756),
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
                                  color: Color(0xFF565756),
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
                  top: 546.11,
                  child: Container(
                    width: 340,
                    height: 53.95,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 53.95,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          top: 11.61,
                          child: SizedBox(
                            width: 316.46,
                            height: 10.93,
                            child: Text(
                              'date on which case was registered',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 42.10,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF565756),
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
                  top: 316.82,
                  child: Container(
                    width: 340,
                    height: 53.95,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 53.95,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          top: 11.61,
                          child: SizedBox(
                            width: 316.46,
                            height: 10.93,
                            child: Text(
                              'Brief Description ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 42.10,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF565756),
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
                  top: 614.73,
                  child: Container(
                    width: 340,
                    height: 53.95,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 53.95,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          top: 11.84,
                          child: SizedBox(
                            width: 204.58,
                            height: 10.53,
                            child: Text(
                              'Place',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 42.10,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF565756),
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
                  left: 44.50,
                  top: 683.34,
                  child: Container(
                    width: 340,
                    height: 53.95,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 53.95,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          top: 11.84,
                          child: SizedBox(
                            width: 168.33,
                            height: 10.53,
                            child: Text(
                              'category of your case',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 42.10,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF565756),
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
                  top: 761.15,
                  child: Container(
                    width: 340,
                    height: 53.95,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 340,
                            height: 53.95,
                            decoration: ShapeDecoration(
                              color: const Color(0x60BBD7FF),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0x60EFECE8)),
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
                          top: 11.84,
                          child: SizedBox(
                            width: 168.33,
                            height: 10.53,
                            child: Text(
                              'Any Person Involved',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                height: 0.11,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          top: 42.10,
                          child: Container(
                            width: 281,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF565756),
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
                  left: 157,
                  top: 98.39,
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}