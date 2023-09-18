import 'package:flutter/material.dart';

class LawyerDetailsPage extends StatelessWidget {
  const LawyerDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppointmentDetailes();
  }
}

class AppointmentDetailes extends StatelessWidget {
  const AppointmentDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 430,
            height: 932,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 26.72,
                  top: 68,
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(
                      top: 9.39,
                      left: 13.33,
                      right: 13.70,
                      bottom: 9.39,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                      ],
                    ),
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
                      fontFamily: 'Averia Sans Libre',
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
                      fontFamily: 'Averia Sans Libre',
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
                      color: Color(0xFF12971F),
                      fontSize: 12,
                      fontFamily: 'Averia Sans Libre',
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
                      color: Color(0xFF12971F),
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
                      fontFamily: 'Averia Sans Libre',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 312.50,
                  child: Container(
                    height: 159,
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 39,
                          child: SizedBox(
                            width: 383,
                            height: 120,
                            child: Text(
                              'Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.',
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 13,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.10,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                              letterSpacing: -0.44,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 26.72,
                  top: 832.88,
                  child: Container(
                    width: 376.55,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF407CE2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 98.50,
                  top: 851.88,
                  child: Text(
                    'Book an Appointment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.05,
                      letterSpacing: -0.44,
                    ),
                  ),
                ),
                Positioned(
                  left: 26.72,
                  top: 515.88,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Working Hours',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                  letterSpacing: -0.44,
                                ),
                              ),
                              SizedBox(width: 178),
                              Text(
                                'See All',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                  letterSpacing: -0.32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 26),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0x4CD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '10.00 AM',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF407CE2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '11.00 AM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0x4CD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '12.00 PM',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 26.72,
                  top: 648.88,
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                  letterSpacing: -0.44,
                                ),
                              ),
                              SizedBox(width: 283),
                              Text(
                                'See All',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                  letterSpacing: -0.32,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 26),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF407CE2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sun 4',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0x4CD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mon 5',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                                decoration: ShapeDecoration(
                                  color: const Color(0x4CD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tue 6',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0.05,
                                        letterSpacing: -0.40,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 144.17,
                  top: 226.53,
                  child: Container(
                    width: 124,
                    height: 30,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 6,
                                  top: 6,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(),
                                    child: const Stack(children: [

                                        ]),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x4C7BC1B7),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 47,
                          top: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x4C7BC1B7),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: 6,
                                  child: Container(
                                    width: 18,
                                    height: 18,
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
                          left: 94,
                          top: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const ShapeDecoration(
                                      color: Color(0x4C7BC1B7),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: 6,
                                  child: Container(
                                    width: 18,
                                    height: 18,
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: -0.50,
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
                  left: 16.34,
                  top: 138.54,
                  child: Container(
                    width: 114.16,
                    height: 126.09,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/114x126"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 146.33,
                  top: 138.54,
                  child: Text(
                    'Advocate Shankar Mishra',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                    ),
                  ),
                ),
                Positioned(
                  left: 275.32,
                  top: 194.17,
                  child: Container(
                    width: 119.35,
                    height: 19,
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 32.35,
                          top: 0,
                          child: SizedBox(
                            width: 87,
                            child: Text(
                              'Rs. 6000',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF407CE2),
                                fontSize: 14,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: -0,
                          top: 4.50,
                          child: SizedBox(
                            width: 47.91,
                            child: Text(
                              'Payment',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                height: 0.10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 146.33,
                  top: 164.99,
                  child: SizedBox(
                    width: 188.67,
                    child: Text(
                      'Ghaziabad',
                      style: TextStyle(
                        color: Color(0xFF565756),
                        fontSize: 10,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                        height: 0.10,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 146.33,
                  top: 189.16,
                  child: Container(
                    width: 54.63,
                    height: 24.85,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 54.63,
                            height: 23.37,
                            decoration: ShapeDecoration(
                              color: const Color(0x2B407CE2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.23),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 7.48,
                          top: 3.25,
                          child: Container(
                            width: 17.32,
                            height: 16.88,
                            child: const Stack(children: [

                                ]),
                          ),
                        ),
                        const Positioned(
                          left: 27.31,
                          top: 5.37,
                          child: SizedBox(
                            width: 23.98,
                            height: 19.48,
                            child: Text(
                              '4.7',
                              style: TextStyle(
                                color: Color(0xFF407CE2),
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
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