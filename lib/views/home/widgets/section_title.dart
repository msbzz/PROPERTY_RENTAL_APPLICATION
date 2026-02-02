import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionPressed;

  const SectionTitle({
    super.key,
    required this.title,
    this.actionText,
    this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (actionText != null)
              TextButton(
                onPressed: onActionPressed,
                child: Text(
                  actionText!,
                  style: TextStyle(color: AppColors.primary, fontSize: 14.sp),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
