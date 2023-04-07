import 'package:flutter/material.dart';
import 'package:gdsc2/shop_app/core/assets.dart';
import 'package:gdsc2/shop_app/core/colors.dart';
import 'package:gdsc2/shop_app/presentation/screens/login/login_view.dart';
import 'package:gdsc2/shop_app/presentation/screens/on_boardin/onborading_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final List<OnBoardingModel> onBoardingModels = const [
    OnBoardingModel(
        imagePath: AssetsData.onBoardingStart,
        title: "Welcome To Shop APP",
        subTitle: "Your new destination for online shopping ...."),
    OnBoardingModel(
        imagePath: AssetsData.onBoardingPlatforms,
        title: "Shop APP Platforms ",
        subTitle:
            "You can find Shop APP on all platforms web, desktop, mobile...."),
    OnBoardingModel(
        imagePath: AssetsData.onBoardingPay,
        title: "Shop APP Pay",
        subTitle: "You easily use your credit card, PayBall  ...."),
    OnBoardingModel(
        imagePath: AssetsData.onBoardingDelivery,
        title: "Shop APP Delivery",
        subTitle: "We can deliver your products wherever you are ...."),
  ];

  final PageController _pageController = PageController();

  bool isLastPage = false;

  void _navigateToLoginView(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                _navigateToLoginView(context);
              },
              child: const Text(
                'SKIP',
                style: TextStyle(color: ShopColors.shopColor5),
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: PageView.builder(
              controller: _pageController,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                print(index);
                if (index == onBoardingModels.length - 1) {
                  setState(() {
                    isLastPage = true;
                  });
                  print(isLastPage);
                } else {
                  setState(() {
                    isLastPage = false;
                  });
                  print(isLastPage);
                }
              },
              itemBuilder: (context, index) =>
                  buildOnBoardingItem(onBoardingModels[index]),
              itemCount: onBoardingModels.length,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: onBoardingModels.length,
                onDotClicked: (index) {
                  print(index);
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOutCubic,
                  );
                },
                effect: const JumpingDotEffect(
                    verticalOffset: 10,
                    offset: -10,
                    activeDotColor: ShopColors.shopColor,
                    dotColor: ShopColors.shopColor1,
                    spacing: 18,
                    dotWidth: 10),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_pageController.page! + 1 == onBoardingModels.length) {
            _navigateToLoginView(context);
          }

          print(_pageController.page);

          _pageController.nextPage(
            duration: const Duration(seconds: 1),
            curve: Curves.slowMiddle,
          );
        },
        backgroundColor: ShopColors.shopColor5,
        child: isLastPage
            ? const Icon(
                Icons.done,
              )
            : const Icon(
                Icons.navigate_next,
              ),
      ),
    );
  }

  Widget buildOnBoardingItem(OnBoardingModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            model.imagePath,
            height: 400,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          model.title,
          style: const TextStyle(
              fontSize: 30,
              color: ShopColors.shopColor2,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            model.subTitle,
            style: const TextStyle(
                color: ShopColors.shopColor1,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
