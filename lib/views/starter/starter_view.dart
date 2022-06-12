import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mumet/ui/colors/colors.dart';
import 'package:mumet/ui/core/button/outline_button.dart';
import 'package:mumet/ui/core/button/primary_button.dart';
import 'package:mumet/ui/size/spacing.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'starter_viewmodle.dart';

class StarterView extends StatelessWidget {
 const StarterView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
  final theme = Theme.of(context);
  final isDark = theme.brightness == Brightness.dark;
  return ViewModelBuilder<StarterViewModel>.reactive(
    builder: (context, model, child) => Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [XColors.DARK, Colors.transparent],
              ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/images/cover.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Let’s Get Started', style: theme.textTheme.headlineSmall, textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Managing your money feels like being mentored', style: theme.textTheme.labelLarge, textAlign: TextAlign.center),
          ),
          XSpacing.verticalMedium,
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: PrimaryButton(
              text: 'Continue with Email', 
              leadingIcon: const Icon(Icons.email, color: Colors.white), 
              onPressed: model.navigateToHome,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
            child: MyOutlineButton(
              text: 'Continue with Google', 
              onPressed: model.navigateToHome,
              leadingIcon: SvgPicture.asset(
                'assets/svg/google.svg',
                semanticsLabel: 'Google Logo',
                width: 24,
                height: 24,
              )),
          ),
          XSpacing.verticalMedium,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: theme.textTheme.labelMedium!.copyWith(
                height: 1.6,
              ),
              children: [
                const TextSpan(text: 'By signing up or logging in, i accept the mumet '),
                TextSpan(
                  text: '\nTerms of Service',
                  style: const TextStyle(color: XColors.PRIMARY),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: const TextStyle(color: XColors.PRIMARY),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
          XSpacing.verticalLarge,
        ],
      ),
    ),
    viewModelBuilder: () => StarterViewModel(),
  );
 }
}