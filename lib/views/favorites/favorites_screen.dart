import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/common/widgets/page_layout.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/proterty_model.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayout(
      title: 'Favorites Screen',
      body: Property.dummyProperties.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 64.sp,
                    color: AppColors.textSecondary,
                  ),
                  SizedBox(height: 16.h),
                  Text('No Favorites yet'),
                ],
              ),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 16.h,
                crossAxisSpacing: 16.h,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {},
            ),
      //actions: [],
    );
  }
}
