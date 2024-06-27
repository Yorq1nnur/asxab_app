import 'package:asxab_app/screens/global_widgets/global_app_bar.dart';
import 'package:asxab_app/screens/global_widgets/notification_item.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({super.key});

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 14.h,
            ),
            child: Column(
              children: [
                activeIndex == 0
                    ? const GlobalAppBar()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ZoomTapAnimation(
                            onTap: () {
                              setState(() {
                                activeIndex = 0;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 10.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(27),
                                border: Border.all(
                                  color: AppColors.cF5F5F5,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_back,
                                    size: 18.w,
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Text(
                                    'Ortga',
                                    style: AppTextStyle.gilroyW400.copyWith(
                                      fontSize: 16.w,
                                      color: AppColors.c1A1A1A,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const NotificationItem(),
                        ],
                      ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 53.h,
                          ),
                          Text(
                            'Asxab qazo ilovasiga',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.w,
                              color: AppColors.c1A1A1A,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
