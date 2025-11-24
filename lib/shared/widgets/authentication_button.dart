import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';

class CustomAuthenticationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color backgroundColor;
  final Color textColor;

  const CustomAuthenticationButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor = AppColors.primary, // Your green
    this.textColor = AppColors.background,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .95,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: ElevatedButton.icon(
            onPressed: isLoading ? null : onPressed,
          icon: const Icon(Icons.arrow_forward, size: 22),
            style: ElevatedButton.styleFrom(
              iconAlignment: IconAlignment.end,
              backgroundColor: backgroundColor,
              foregroundColor: textColor,
              disabledBackgroundColor: backgroundColor.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            label: Text(text, style: TextStyle(fontWeight: FontWeight.bold, ),
            // child: isLoading
            //     ? const SizedBox(
            //         height: 24,
            //         width: 24,
            //         child: CircularProgressIndicator(
            //           color: Colors.black54,
            //           strokeWidth: 2.5,
            //         ),
            //       )
            //     : Text(text, style: TextStyle(fontWeight: FontWeight.bold),)
        ),
        )
      ),
    );
  }
}
