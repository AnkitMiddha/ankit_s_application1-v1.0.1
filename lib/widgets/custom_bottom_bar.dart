import 'package:flutter/material.dart';
import 'package:ankit_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavLearn,
      activeIcon: ImageConstant.imgNavLearn,
      title: "lbl_learn".tr,
      type: BottomBarEnum.Learn,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavHub,
      activeIcon: ImageConstant.imgNavHub,
      title: "lbl_hub".tr,
      type: BottomBarEnum.Hub,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChat,
      activeIcon: ImageConstant.imgNavChat,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile,
      activeIcon: ImageConstant.imgNavProfile,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.v,
      decoration: BoxDecoration(),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    color: appTheme.gray600,
                    margin: EdgeInsets.only(top: 10.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelMedium!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 72.h,
                    child: Divider(),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 22.adaptSize,
                    width: 22.adaptSize,
                    color: appTheme.blueA200,
                    margin: EdgeInsets.only(top: 8.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelMediumBlueA200.copyWith(
                        color: appTheme.blueA200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Learn,
  Hub,
  Chat,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
