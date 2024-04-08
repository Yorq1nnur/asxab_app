import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FastingScreen extends StatelessWidget {
  const FastingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.teal.withOpacity(
                      0.3,
                    ),
                    Colors.amberAccent.withOpacity(0.5),
                  ],
                ),
              ),
              child: Image.asset(
                AppImages.back,
                width: 375.w,
                height: 440.h,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 36.h,
                  bottom: 18.h,
                ),
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.w,
                      ),
                      child: Text(
                        "Hisoblash tugmasini bosganingizdan so’ng sizga 2 ta kerakli savollar beriladi",
                        style: AppTextStyle.interBold.copyWith(
                          color: AppColors.c1A1A1A.withOpacity(
                            0.5,
                          ),
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
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Ink(
                        height: 57.h,
                        decoration: const BoxDecoration(
                          color: AppColors.c33CBC2,
                        ),
                        child: InkWell(
                          onTap: () {

                          },
                          child: Center(
                            child: Text(
                              "Hisoblash",
                              style: AppTextStyle.interBold
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}