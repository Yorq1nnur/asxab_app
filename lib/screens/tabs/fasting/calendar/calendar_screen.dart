import 'dart:math';
import 'package:asxab_app/screens/global_widgets/global_app_bar.dart';
import 'package:asxab_app/screens/global_widgets/my_ink_well.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

int activeIndex = 0;

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              const GlobalAppBar(),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Umumiy qazo ro‘zalaringiz",
                    style: AppTextStyle.gilroyW700.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.c1A1A1A,
                    ),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Image.asset(
                    AppImages.calendar,
                    height: 18.h,
                    width: 18.w,
                    fit: BoxFit.fill,
                  )
                ],
              ),
              Text(
                "143 kunlik",
                style: AppTextStyle.gilroyW700.copyWith(
                  fontSize: 42.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.c1A1A1A,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 4.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.cF7F7F7,
                  borderRadius: BorderRadius.circular(
                    4.r,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    titles.length,
                    (index) => InkWell(
                      borderRadius: BorderRadius.circular(
                        4.r,
                      ),
                      onTap: () {
                        activeIndex = index;
                        setState(() {});
                      },
                      child: Container(
                        height: 40.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            4.r,
                          ),
                          color: activeIndex == index
                              ? AppColors.white
                              : AppColors.transparent,
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              titles[index],
                              style: AppTextStyle.gilroyW700.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: activeIndex == index
                                    ? AppColors.c1A1A1A
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              activeIndex == 0
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: TableCalendar(
                          focusedDay: DateTime.now(),
                          currentDay: DateTime.now(),
                          firstDay: DateTime(2000),
                          lastDay: DateTime(
                            2100,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          6.r,
                        ),
                        color: AppColors.white,
                        border: Border.all(
                          color: AppColors.c1A1A1A.withOpacity(
                            0.1,
                          ),
                          width: 2.w,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "QAZO RO'ZA",
                                style: AppTextStyle.gilroyW700.copyWith(
                                  color: AppColors.c1A1A1A,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                "Tutilgan ro'za",
                                style: AppTextStyle.gilroyW700.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.c1A1A1A.withOpacity(
                                    0.36,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "17 kun",
                                style: AppTextStyle.gilroyW700.copyWith(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.c1A1A1A),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            AppImages.linear,
                            width: 52.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 80.w,
                            height: 80.w,
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: 80.w,
                                  height: 80.w,
                                  child: Transform.rotate(
                                    angle: pi / 2,
                                    child: CircularProgressIndicator(
                                      value: 0.24,
                                      color: AppColors.c39C1DA,
                                      strokeCap: StrokeCap.round,
                                      strokeWidth: 8.h,
                                      backgroundColor:
                                          AppColors.c39C1DA.withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "24%",
                                    style: AppTextStyle.gilroyW700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 10.h,
              ),
              Visibility(
                visible: activeIndex == 0,
                child: MyInkWell(
                  voidCallback: () {},
                  title: "Ro'za tutdim",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> titles = [
    "Kalendar",
    "Statistika",
  ];
}
