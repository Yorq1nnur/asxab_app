import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.cF5F5F5,
          width: 1.w,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(
          50.r,
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.w,
            ),
            child: SvgPicture.asset(
              AppImages.notification,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
      ),
    );
  }
}
