import 'package:flutter/material.dart';
import 'package:groceries_app/view/screens/home/home_screen.dart';
import 'package:groceries_app/view/widgets/button/button.dart';
import 'package:groceries_app/view_model/utils/app_assets.dart';
import 'package:groceries_app/view_model/utils/app_color.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF4E8E2),
              Color(0xFFFCFCFC),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Center(
                  child: Image.asset(
                    AppAssets.carrot1,
                    width: 55,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Loging',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Enter Your Email And Password',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off)),
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('forgot password?'),
              ),
              const SizedBox(height: 20),
              ContainarButton(
                  textButton: 'Sing Up', screen: const HomeScreen()),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? "),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Singup',
                      style: TextStyle(color: AppColors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
