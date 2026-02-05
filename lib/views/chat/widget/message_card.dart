import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/constants/color_constants.dart';
import 'package:rental_application/models/message.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  final bool isLandLord;
  final String userId;

  const MessageCard({
    super.key,
    required this.message,
    required this.isLandLord,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    final oteherPartyName = message.senderId == userId
        ? message.recieverName
        : message.senderName;

    final isUnread = message.isRead && message.recieverId == userId;

    final timestamp = DateTime.now().difference(message.timeStamp).inHours < 24
        ? '${DateTime.now().difference(message.timeStamp).inHours}h ago'
        : '${DateTime.now().difference(message.timeStamp).inDays}d ago';

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: isUnread
              ? AppColors.primary.withValues(alpha: 0.3)
              : Colors.transparent,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16.r),
        child: Padding(
          padding: EdgeInsetsGeometry.all(16.w),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundColor: isUnread
                    ? AppColors.primary.withValues(alpha: 0.1)
                    : Colors.grey.withValues(alpha: 0.1),
                child: Text(
                  oteherPartyName[0].toUpperCase(),
                  style: TextStyle(
                    color: isUnread ? AppColors.primary : Colors.grey[700],
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(oteherPartyName)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
