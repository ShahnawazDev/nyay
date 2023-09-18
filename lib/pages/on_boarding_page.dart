import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nyay/pages/main_page.dart';
import 'package:nyay/pages/welcome_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color.fromRGBO(177, 200, 250, 100.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color.fromRGBO(177, 200, 250, 1.0),
      allowImplicitScrolling: true,
      autoScrollDuration: 30000,
      infiniteAutoScroll: false,
      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       child: _buildImage('flutter.png', 100),
      //     ),
      //   ),
      // ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          titleWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Text(
              "Your Personal Legal Advisor",
              style: TextStyle(
                fontSize: 22.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: "",
          image:
              Image.asset('assets/images/onboarding/lawyer1.png', width: 250.h),
          decoration: pageDecoration.copyWith(
            bodyFlex: 1,
            imageFlex: 6,
            safeArea: 80,
          ),
        ),
        PageViewModel(
          titleWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0.w),
            child: Text(
              "Get advice only from a companion you believe in",
              style: TextStyle(
                fontSize: 22.w,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: "",
          decoration: pageDecoration.copyWith(
            bodyFlex: 1,
            imageFlex: 4,
            // bodyAlignment: Alignment.bottomCenter,
            // imageAlignment: Alignment.topCenter,
          ),
          image:
              Image.asset('assets/images/onboarding/lawyer2.png', width: 150.h),
          reverse: false,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      done: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.w),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'Done',
          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,),
        ),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        // color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      // dotsContainerDecorator: const ShapeDecoration(
      //   color: Colors.black87,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //   ),
      // ),
    );
  }
}
