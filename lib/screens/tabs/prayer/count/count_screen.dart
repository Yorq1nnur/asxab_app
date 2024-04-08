import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    String? selectedLanguage = "O'z";
    List<String> programmingLanguages = [
      "O'z",
      "Eng",
      "Русс",
    ];
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 58.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 18.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppImages.uzb,
                        width: 28.w,
                        height: 20.h,
                        fit: BoxFit.fill,
                      ),
                      DropdownButton<String>(
                        value: selectedLanguage,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLanguage = newValue;
                          });
                        },
                        items: programmingLanguages.map((String language) {
                          return DropdownMenuItem<String>(
                            value: language,
                            child: Text(language),
                          );
                        }).toList(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
