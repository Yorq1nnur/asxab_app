import 'package:asxab_app/screens/global_widgets/asxab_text.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 35.w,
              height: 35.w,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AppImages.moon,
                    height: 35.h,
                    width: 30.w,
                    fit: BoxFit.fitHeight,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 18.w,
                        width: 18.w,
                        decoration: const BoxDecoration(
                            color: AppColors.c33CBC2, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            const AsxabText(),
          ],
        ),
        Ink(
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
        ),
      ],
    );
  }
}
