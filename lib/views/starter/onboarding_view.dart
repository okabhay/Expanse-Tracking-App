import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mumet/ui/core/button/primary_button.dart';

import 'onboarding_viewmodle.dart';

class OnboardingView extends StatelessWidget {
 const OnboardingView({Key? key}) : super(key: key);

  Widget _buildImage(String assetName) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 52.0),
        child: Image.asset('assets/$assetName.png', width: 350.0),
      ),
      alignment: Alignment.bottomCenter,
    );
  }

 @override
 Widget build(BuildContext context) {
   final theme = Theme.of(context);
   return ViewModelBuilder<OnboardingViewModel>.reactive(
     builder: (context, model, child) => Scaffold(
       backgroundColor: theme.backgroundColor,
        body: Column(
          children: [
            Expanded(
              child: IntroductionScreen(
                pages: [
                  PageViewModel(
                    title: "Manage your money easily, without any hassle",
                    body: "Joining contest is super easy by paying joining fee you can enroll in any contest.",
                    image: _buildImage('images/onboarding_1'),
                    footer: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PrimaryButton(text: 'Next', onPressed: (){}),
                    ),
                    decoration: PageDecoration(
                      bodyAlignment: Alignment.center,
                      imagePadding: const EdgeInsets.all(16),
                      titleTextStyle: theme.textTheme.titleLarge as TextStyle,
                      bodyTextStyle: theme.textTheme.labelLarge as TextStyle,
                      imageFlex: 1,
                      bodyFlex: 0,
                    )
                  ),
                  PageViewModel(
                    useScrollView: false,
                    image: Center(
                      child: Image.asset('assets/images/onboarding_1.png'),
                    ),
                    title: "Manage your money easily, without any hassle",
                    body: "Mumet will help you manage expenses and income easily without any hassle",
                    footer: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PrimaryButton(text: 'Next', onPressed: (){}),
                    ),
                    decoration: PageDecoration(
                      bodyAlignment: Alignment.center,
                      imagePadding: const EdgeInsets.all(16),
                      titleTextStyle: theme.textTheme.titleLarge as TextStyle,
                      bodyTextStyle: theme.textTheme.labelLarge as TextStyle,
                      imageFlex: 1,
                      bodyFlex: 0,
                    ),
                  ),
                  PageViewModel(
                    useScrollView: false,
                    image: Center(
                      child: Image.asset('assets/images/onboarding_2.png'),
                    ),
                    title: "Analysis monthly expenses, for better finances",
                    body: "All your financial flows will be recorded with Mumet, we will help you to organize it",
                    footer: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PrimaryButton(text: 'Get Started', onPressed: model.onGetStarted),
                    ),
                    decoration: PageDecoration(
                      bodyAlignment: Alignment.center,
                      imagePadding: const EdgeInsets.all(16),
                      titleTextStyle: theme.textTheme.titleLarge as TextStyle,
                      bodyTextStyle: theme.textTheme.labelLarge as TextStyle,
                      imageFlex: 1,
                      bodyFlex: 0,
                    ),
                  ),
                ],
                onDone: () {
                  // When done button is press
                },
                onSkip: () {
                  // You can also override onSkip callback
                },
                showBackButton: false,
                showSkipButton: false,
                showNextButton: false,
                showDoneButton: false,
                dotsDecorator: DotsDecorator(
                  activeColor: theme.primaryColor,
                  color: Colors.black26,
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                  )
                ),
              ),
            ),
          ],
        ),
     ),
     viewModelBuilder: () => OnboardingViewModel(),
   );
 }
}