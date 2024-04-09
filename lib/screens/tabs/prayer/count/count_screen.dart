import 'package:asxab_app/screens/global_widgets/my_ink_well.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

final TextEditingController dateController = TextEditingController();
final TextEditingController monthController = TextEditingController();
final TextEditingController yearController = TextEditingController();

List<TextEditingController> controllers = [
  dateController,
  monthController,
  yearController,
];

class _CountScreenState extends State<CountScreen> {
  String? selectedLanguage = "O'z";
  List<String> programmingLanguages = [
    "O'z",
    "Eng",
    "Русс",
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.w,
                                  ),
                                ),
                                child: Image.asset(
                                  _selectImage(),
                                  width: 28.w,
                                  height: 20.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              DropdownButton<String>(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18.w,
                                  color: AppColors.c1A1A1A,
                                ),
                                value: selectedLanguage,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedLanguage = newValue;
                                  });
                                },
                                items:
                                    programmingLanguages.map((String language) {
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.w,
                        right: 40.w,
                      ),
                      child: Text(
                        "Qazo ro‘zani hisoblash",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.interBold.copyWith(
                          fontSize: 30.w,
                          fontWeight: FontWeight.w600,
                          color: AppColors.c1A1A1A,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                      ),
                      child: Text(
                        "Ramazon ro‘zasini to‘liq tutishni boshlagan kuningiz",
                        style: AppTextStyle.interBold.copyWith(
                          fontSize: 24.w,
                          fontWeight: FontWeight.w500,
                          color: AppColors.c1A1A1A.withOpacity(
                            0.48,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            3,
                            (index) {
                              controllers[index].text = titles[index];
                              return SizedBox(
                                height: 57.h,
                                child: Container(
                                  height: 57.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent.withOpacity(
                                      0.1,
                                    ),
                                    border: Border.all(
                                      color: AppColors.cEEEEEE,
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      textInputAction: index == 2
                                          ? TextInputAction.done
                                          : TextInputAction.next,
                                      style: AppTextStyle.interBold.copyWith(
                                        fontSize: 18.w,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.c1A1A1A.withOpacity(
                                          0.3,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        fillColor:
                                            Colors.pinkAccent.withOpacity(0.11),
                                        hoverColor:
                                            Colors.pinkAccent.withOpacity(0.11),
                                        hintText: titles[index],
                                        hintStyle:
                                            AppTextStyle.interBold.copyWith(
                                          color: AppColors.c1A1A1A.withOpacity(
                                            0.3,
                                          ),
                                          fontSize: 18.w,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: AppColors.cEEEEEE,
                                            width: 1.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.w,
                        bottom: 10.h,
                        top: 24.h,
                      ),
                      child: Text(
                        "Tutilgan qazo ro‘zalaringiz bo‘lsa, ularni kiriting*",
                        style: AppTextStyle.interBold.copyWith(
                            fontSize: 24.w,
                            fontWeight: FontWeight.w500,
                            color: AppColors.c1A1A1A.withOpacity(0.48)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                      ),
                      child: SizedBox(
                        height: 57.h,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(
                              0.1,
                            ),
                          ),
                          child: TextField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.cEEEEEE,
                                  width: 1.w,
                                ),
                              ),
                              hintText: 'Masalan: 60 kun',
                              hintStyle: AppTextStyle.interBold.copyWith(
                                color: AppColors.c1A1A1A.withOpacity(
                                  0.3,
                                ),
                                fontSize: 18.w,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppImages.info,
                              height: 12.h,
                              width: 12.w,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText:
                                        "Shu kungacha tutgan ro‘zalaringiz sonini kiriting",
                                    hintMaxLines: 2,
                                    hintStyle: AppTextStyle.interBold.copyWith(
                                      fontSize: 16.w,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.c1A1A1A.withOpacity(
                                        0.48,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.transparent,
                                        width: 1.w,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: AppColors.transparent,
                                      width: 1.w,
                                    )),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppColors.transparent,
                                        width: 1.w,
                                      ),
                                    )),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            MyInkWell(
              voidCallback: () {},
              title: 'Tasdiqlash',
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }

  _selectImage() {
    if (selectedLanguage == "O'z") {
      return AppImages.uzb;
    } else if (selectedLanguage == 'Eng') {
      return AppImages.eng;
    } else {
      return AppImages.rus;
    }
  }

  List<String> titles = [
    'Sana',
    'Oy',
    'Yil',
  ];
}
