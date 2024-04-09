import 'package:asxab_app/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AsxabText extends StatelessWidget {
  const AsxabText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        _list.length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
          ),
          child: SvgPicture.asset(
            _list[index].iconPath,
            height: _list[index].height,
            width: _list[index].width,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class AsxabHelper {
  final String iconPath;
  final double height;
  final double width;

  AsxabHelper({
    required this.height,
    required this.width,
    required this.iconPath,
  });
}

List<AsxabHelper> _list = [
  AsxabHelper(
    height: 11.25.h,
    width: 11.25.w,
    iconPath: AppImages.a,
  ),
  AsxabHelper(
    height: 11.25.h,
    width: 8.75.w,
    iconPath: AppImages.s,
  ),
  AsxabHelper(
    height: 10.89.h,
    width: 9.5.w,
    iconPath: AppImages.x,
  ),
  AsxabHelper(
    height: 11.5.h,
    width: 11.25.w,
    iconPath: AppImages.a,
  ),
  AsxabHelper(
    height: 14.81.h,
    width: 11.21.w,
    iconPath: AppImages.b,
  ),
];
