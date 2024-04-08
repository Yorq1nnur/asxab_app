import 'package:asxab_app/screens/tabs/routes.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.tealAccent.withOpacity(
                      .3,
                    ),
                    Colors.amber.withOpacity(
                      .5,
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                AppImages.back,
                height: 440.h,
                width: 375.w,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 36.h,
                  bottom: 18.h,
                ),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Text(
                        "Qazo ro‘zalaringiz bormi? Hisoblab, tutishni boshlang",
                        style: AppTextStyle.interBold.copyWith(
                          color: AppColors.c1A1A1A,
                          fontSize: 24.w,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Text(
                        "Hisoblash tugmasini bosganingizdan so’ng sizga 2 ta kerakli savollar beriladi",
                        style: AppTextStyle.interBold.copyWith(
                          color: AppColors.c1A1A1A,
                          fontSize: 15.w,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                      ),
                      child: Ink(
                        height: 57.h,
                        decoration:
                            const BoxDecoration(color: AppColors.c33CBC2),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteNames.countScreen,
                            );
                          },
                          child: Center(
                            child: Text(
                              'Hisoblang',
                              style: AppTextStyle.interBold.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
