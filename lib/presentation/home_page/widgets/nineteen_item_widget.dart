import '../models/nineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NineteenItemWidget extends StatelessWidget {
  NineteenItemWidget(
    this.nineteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NineteenItemModel nineteenItemModelObj;

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
          CustomImageView(
            imagePath: ImageConstant.imgYoungWomanDoi,
            height: 140.v,
            width: 242.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(8.h),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              nineteenItemModelObj.babycare!,
              style: CustomTextStyles.labelLargeBlueA200Bold,
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 190.h,
            margin: EdgeInsets.only(left: 12.h),
            child: Text(
              nineteenItemModelObj.understandingOf!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Text(
                    nineteenItemModelObj.time!,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: nineteenItemModelObj.min,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 166.h,
                    top: 4.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
