import 'package:asxab_app/utils/colors/app_colors.dart';
import 'package:asxab_app/utils/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'asxab',
            style: AppTextStyle.interBold.copyWith(
              color: AppColors.c005260,
            ),
          ),
        ),
      ),
    );
  }
}
