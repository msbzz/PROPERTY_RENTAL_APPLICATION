import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/booking_model.dart';
import 'package:shimmer/shimmer.dart';

class BookingCard extends StatelessWidget {
  final Booking booking;
  const BookingCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(20.h),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.r),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: booking.property.imageUrl,
                    height: 180.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => _buildShimmerEffect(),
                    errorWidget: (context, url, error) => _builErrorWidget(),
                  ),
                ),
                Positioned(
                  top: 16.h,
                  right: 16.w,
                  child: _buildStatusChip(booking.status),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
        ),
      ),
    );
  }

  Widget _builErrorWidget() {
    return Container();
  }

  Widget _buildStatusChip(BookingStatus status) {
    return Container();
  }
}
