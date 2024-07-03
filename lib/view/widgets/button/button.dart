import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/utils/app_color.dart';
import 'package:groceries_app/view_model/utils/navigation.dart';

class ContainarButton extends StatelessWidget {
  ContainarButton({super.key, required this.textButton, required this.screen});
  String? textButton;
  Widget? screen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigation.push(context, screen!);
      },
      child: Container(
        alignment: Alignment.center,
        width: 353,
        height: 67,
        decoration: const BoxDecoration(
            color: AppColors.green,
            borderRadius: BorderRadius.all(Radius.circular(19))),
        child: Text(
          textButton!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
