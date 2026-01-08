import 'package:flutter/material.dart';
import 'package:realtime_ex/app_base/shared/constants/colors.dart';
import 'package:realtime_ex/app_base/shared/constants/sizes.dart';
import 'package:realtime_ex/app_base/shared/models/button_model.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({super.key, required this.buttonModel});

  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: AppSizes.paddingFromTop, bottom: AppSizes.paddingFromBottom),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: AppSizes.elevationDegree,
          backgroundColor: AppColors.brandColor,
          foregroundColor: AppColors.whiteColor,
          fixedSize: Size(AppSizes.btnWidthSize, AppSizes.btnHeightSize),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.circularRadius),
          ),
        ),
        onPressed: buttonModel.onClick,
        child: buttonModel.childWidget,
      ),
    );
  }
}
