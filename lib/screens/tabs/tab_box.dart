import 'package:asxab_app/screens/tabs/fasting/fasting_screen.dart';
import 'package:asxab_app/screens/tabs/prayer/prayer_screen.dart';
import 'package:asxab_app/screens/tabs/profile/profile_screen.dart';
import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/images/app_images.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  List<Widget> _screens = [];
  int _activeIndex = 0;

  @override
  void initState() {
    _init();
    super.initState();
  }

  void _init(){
    _screens = [
      const PrayerScreen(),
      const FastingScreen(),
      const ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (newActiveIndex) {
          _activeIndex = newActiveIndex;
          setState(() {});
        },
        currentIndex: _activeIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        selectedLabelStyle: AppTextStyle.gilroyBold.copyWith(
          color: AppColors.c1A1A1A,
          fontSize: 16.w,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: AppTextStyle.gilroyBold.copyWith(
          color: AppColors.c1A1A1A,
          fontSize: 16.w,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppImages.activePrayer,
              height: 24.h,
              width: 24.w,
            ),
            icon: SvgPicture.asset(
              AppImages.prayer,
              height: 24.h,
              width: 24.w,
            ),
            label: "Namoz",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppImages.activeFasting,
              height: 24.h,
              width: 24.w,
            ),
            icon: SvgPicture.asset(
              AppImages.fasting,
              height: 24.h,
              width: 24.w,
            ),
            label: "Ro'za",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppImages.activeProfile,
              height: 24.h,
              width: 24.w,
            ),
            icon: SvgPicture.asset(
              AppImages.profile,
              height: 24.h,
              width: 24.w,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
