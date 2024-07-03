import 'package:flutter/material.dart';
import 'package:groceries_app/view/screens/onboarding/onboarding_screen.dart';
import 'package:groceries_app/view_model/utils/app_assets.dart';
import 'package:groceries_app/view_model/utils/app_color.dart';
import 'package:groceries_app/view_model/utils/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigation.push(context,const OnboardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          width: 200,
        ),
      ),
    );
  }
}
