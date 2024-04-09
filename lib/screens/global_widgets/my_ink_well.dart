import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/styles/app_text_style.dart';

class MyInkWell extends StatelessWidget {
  const MyInkWell({
    super.key,
    required this.voidCallback,
    required this.title,
  });

  final VoidCallback voidCallback;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Ink(
        height: 57.h,
        decoration: const BoxDecoration(
          color: AppColors.c33CBC2,
        ),
        child: InkWell(
          onTap: voidCallback,
          child: Center(
            child: Text(
              title,
              style: AppTextStyle.interBold.copyWith(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
