import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Se quiser navegar depois de alguns segundos, você pode colocar aqui.
    // Ex:
    // Future.delayed(const Duration(seconds: 2), () {
    //   if (!mounted) return;
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value,
                  child: Container(
                    padding: EdgeInsets.all(24.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      color: AppColors.primary,
                      size: 80.w,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 24.h),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Column(
                    children: [
                      Text(
                        'Rental App',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Encontre o lugar perfeito',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 48.h),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: SizedBox(
                    width: 40.w,
                    height: 40.w,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primary,
                      ),
                      strokeWidth: 3,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
