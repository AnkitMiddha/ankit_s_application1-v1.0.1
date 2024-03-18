import 'package:ankit_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ankit_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:ankit_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'models/eighteen_item_model.dart';
import '../home_page/widgets/eighteen_item_widget.dart';
import 'widgets/twenty_item_widget.dart';
import 'models/twenty_item_model.dart';
import 'widgets/twentyone_item_widget.dart';
import 'models/twentyone_item_model.dart';
import 'widgets/nineteen_item_widget.dart';
import 'models/nineteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ankit_s_application1/core/app_export.dart';
import 'notifier/home_notifier.dart';

// ignore_for_file: must_be_immutable
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildSix(context),
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences: "msg_programs_for_you".tr,
                            viewAll: "lbl_view_all".tr,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildTwenty(context),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences:
                                "msg_events_and_experiences".tr,
                            viewAll: "lbl_view_all".tr,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildTwentyOne(context),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            right: 11.h,
                          ),
                          child: _buildThirtyNine(
                            context,
                            eventsandexperiences: "lbl_lessons_for_you".tr,
                            viewAll: "lbl_view_all".tr,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildNineteen(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            leadingWidth: 37.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgTelevision,
              margin: EdgeInsets.only(left: 13.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgForumBlack24dp,
                margin: EdgeInsets.only(left: 14.h),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgOutlineStatusNotification,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 14.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl_hello_priya".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "msg_what_do_you_wanna".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 31.v),
          Align(
            alignment: Alignment.center,
            child: Consumer(
              builder: (context, ref, _) {
                return Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children: List<Widget>.generate(
                    ref
                            .watch(homeNotifier)
                            .homeModelObj
                            ?.eighteenItemList
                            .length ??
                        0,
                    (index) {
                      EighteenItemModel model = ref
                              .watch(homeNotifier)
                              .homeModelObj
                              ?.eighteenItemList[index] ??
                          EighteenItemModel();

                      return EighteenItemWidget(
                        model,
                        onSelectedChipView1: (value) {
                          ref
                              .read(homeNotifier.notifier)
                              .onSelectedChipView1(index, value);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.twentyItemList.length ??
                    0,
            itemBuilder: (context, index) {
              TwentyItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.twentyItemList[index] ??
                      TwentyItemModel();
              return TwentyItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOne(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.twentyoneItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              TwentyoneItemModel model = ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.twentyoneItemList[index] ??
                  TwentyoneItemModel();
              return TwentyoneItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return SizedBox(
      height: 280.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.nineteenItemList.length ??
                    0,
            itemBuilder: (context, index) {
              NineteenItemModel model = ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.nineteenItemList[index] ??
                  NineteenItemModel();
              return NineteenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Common widget
  Widget _buildThirtyNine(
    BuildContext context, {
    required String eventsandexperiences,
    required String viewAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eventsandexperiences,
          style: CustomTextStyles.titleMediumLora.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 6.v,
          ),
          child: Text(
            viewAll,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowLeft,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 2.h),
        ),
      ],
    );
  }
}
