import 'package:asxab_app/screens/global_widgets/asxab_text.dart';
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
      ),
      child: Scaffold(
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
              Row(
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
                                      color: AppColors.c33CBC2,
                                      shape: BoxShape.circle),
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
                  Container(
                    padding: EdgeInsets.all(
                      15.w,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.cF5F5F5,
                        width: 1.w,
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.notification,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Umumiy qazo ro‘zalaringiz",
                    style: AppTextStyle.interBold.copyWith(
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
                style: AppTextStyle.interBold.copyWith(
                  fontSize: 42.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.c1A1A1A,
                ),
              ),
              SizedBox(
                height: 24.h,
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
                    (index) => Ink(
                      height: 40.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: activeIndex == index
                            ? AppColors.cFFFFFF
                            : AppColors.transparent,
                        borderRadius: BorderRadius.circular(
                          4.r,
                        ),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(
                          4.r,
                        ),
                        onTap: () {
                          activeIndex = index;
                          setState(() {});
                        },
                        child: Center(
                          child: Center(
                            child: Text(
                              titles[index],
                              style: AppTextStyle.interBold.copyWith(
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
                height: 24.h,
              ),
              TableCalendar(
                focusedDay: DateTime.now(),
                currentDay: DateTime.now(),
                firstDay: DateTime(2000),
                lastDay: DateTime(
                  2100,
                ),
              ),
              const Spacer(),
              MyInkWell(
                voidCallback: () {},
                title: "Ro'za tutdim",
              ),
              SizedBox(
                height: 20.h,
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
