import '../models/eighteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class EighteenItemWidget extends StatelessWidget {
  EighteenItemWidget(
    this.eighteenItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  EighteenItemModel eighteenItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 15.v,
          right: 30.h,
          bottom: 15.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          eighteenItemModelObj.solidFilesBookmark!,
          style: TextStyle(
            color: appTheme.blueA200,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgSolidFilesBookmark,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(right: 12.h),
        ),
        selected: (eighteenItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blueA200.withOpacity(0.2),
        shape: (eighteenItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueA200,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueA200,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView1?.call(value);
        },
      ),
    );
  }
}
