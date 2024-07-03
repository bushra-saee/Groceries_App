import 'package:flutter/material.dart';
import 'package:groceries_app/view/screens/login/login_screen.dart';
import 'package:groceries_app/view_model/utils/app_assets.dart';
import 'package:groceries_app/view_model/utils/app_color.dart';
import 'package:groceries_app/view_model/utils/navigation.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(AppAssets.onboarding).image)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              AppAssets.carrot,
              width: 45,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Welcome\n to our store',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Wittgenstein'),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Ger your groceries in as fast as one hour',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigation.push(context, const LogIn());
              },
              child: Container(
                alignment: Alignment.center,
                width: 353,
                height: 67,
                decoration: const BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.all(Radius.circular(19))),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
