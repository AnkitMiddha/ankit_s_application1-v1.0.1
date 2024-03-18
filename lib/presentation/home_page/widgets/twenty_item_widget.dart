import '../models/twenty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TwentyItemWidget extends StatelessWidget {
  TwentyItemWidget(
    this.twentyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwentyItemModel twentyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 242.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.v,
            width: 242.h,
            padding: EdgeInsets.symmetric(horizontal: 51.h),
            decoration: AppDecoration.fillLightGreen.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: CustomImageView(
              imagePath: twentyItemModelObj.lifestyle,
              height: 140.adaptSize,
              width: 140.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              twentyItemModelObj.lifestyle1!,
              style: CustomTextStyles.labelLargeBlueA200Bold,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 199.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Text(
              twentyItemModelObj.aCompleteGuide!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              twentyItemModelObj.lessonsCounter!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }
}
