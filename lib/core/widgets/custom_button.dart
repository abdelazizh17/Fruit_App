import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
