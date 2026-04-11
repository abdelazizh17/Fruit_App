import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/helper/is_arabic.dart';
import 'package:fruit_hub_app/core/utils/assets.dart';
import 'package:fruit_hub_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: isArabic()
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        Center(child: SvgPicture.asset(Assets.imagesLogoSplash)),
        SvgPicture.asset(Assets.imagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
