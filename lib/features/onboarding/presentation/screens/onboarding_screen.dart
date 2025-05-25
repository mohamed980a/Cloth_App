import 'package:flutter/material.dart';
import 'package:learn_chinese/core/routing/routes.dart';
import 'package:learn_chinese/features/onboarding/presentation/screens/widgets/onboarding_one.dart';
import 'package:learn_chinese/features/onboarding/presentation/screens/widgets/onboarding_three.dart';
import 'package:learn_chinese/features/onboarding/presentation/screens/widgets/onboarding_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
final PageController _pageController = PageController(initialPage: currentPage);
int currentPage=0;
final List<Widget> _pages = [
  const OnboardingOne(),
  const OnboardingTwo(),
  const OnboardingThree(),
];

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
        PageView.builder(
        controller: _pageController,
        onPageChanged: (int page) {
      setState(() {
        currentPage = page;
      });
    },
    itemCount: _pages.length,
    itemBuilder: (context, index) {
    return _pages[index % _pages.length];
    }),
    Positioned(bottom: 135,child: SmoothPageIndicator(
      controller: _pageController,
      count:  _pages.length,
      axisDirection: Axis.horizontal,
      effect:  ExpandingDotsEffect(
          spacing:  8.0,
          radius:  4.0,
          dotWidth:  10.0,
          dotHeight:  8.0,
          paintStyle:  PaintingStyle.stroke,
          strokeWidth:  1.5,
          dotColor:  Colors.grey,
          activeDotColor:  Colors.purple
      ),)
    ),
    Positioned(
    bottom: 40,
    child: OutlinedButton(
    onPressed: () {
    final next = currentPage+1;
    currentPage == _pages.length-1 ? Navigator.pushNamed(context, Routes.loginScreen) : jumpToNextPage(next);
    },
    style: ElevatedButton.styleFrom(
    side: const BorderSide(color: Color(0xff20473E)),
    shape: const CircleBorder(),

    ),
    child: Container(
    height: 70,
    width: 70,
    decoration: const BoxDecoration(
    color: Colors.purple,
    shape: BoxShape.circle,

    ),
    child: const Icon(Icons.arrow_forward_outlined,color: Colors.white,),
    )),
    ),
    ],
    )
    ),
    );
  }

  void jumpToNextPage(int nextPage) {
    setState(() {
      currentPage = nextPage;
    });
    _pageController.animateToPage(nextPage, duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }
}









        // PageView(
//           // physics: const BouncingScrollPhysics(),
//           controller: _pageController,
//           onPageChanged: (int index) {
//             setState(() {
//               currentPage = index;
//             });
//           },
//           children: [
//             OnboardingBody(
//               assets: AppImages.onBoarding1,
//               title: AppTexts.title1,
//               description: AppTexts.description1,
//             ),
//             OnboardingBody(
//               assets: AppImages.onBoarding2,
//               title: AppTexts.title2,
//               description: AppTexts.description2,
//             ),OnboardingBody(
//               assets: AppImages.onBoarding3,
//               title: AppTexts.title3,
//               description: AppTexts.description3,
//             ),
//
//             AnimatedSmoothIndicator(effect: const WormEffect(
//                 activeDotColor: Color(0xffffffff),
//                 dotHeight: 11.0,
//                 dotWidth: 11.0
//             ),activeIndex: currentPage, count: in.length)
//
//           ],
//         )
//       ));
//
//   }
// }
