import 'package:equatable/equatable.dart';
import '/core/app_export.dart';
import '../models/eighteen_item_model.dart';
import '../models/twenty_item_model.dart';
import '../models/twentyone_item_model.dart';
import '../models/nineteen_item_model.dart';
import 'package:ankit_s_application1/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    homeModelObj: HomeModel(
        eighteenItemList: List.generate(4, (index) => EighteenItemModel()),
        twentyItemList: [
          TwentyItemModel(
              lifestyle: ImageConstant.imgG12,
              lifestyle1: "Lifestyle",
              aCompleteGuide: "A complete guide for your new born baby",
              lessonsCounter: "16 lessons"),
          TwentyItemModel(
              lifestyle: ImageConstant.img49568451,
              lifestyle1: "Working Parents",
              aCompleteGuide: "Understanding of human behaviour",
              lessonsCounter: "12 lessons")
        ],
        twentyoneItemList: [
          TwentyoneItemModel(
              babycare: "Babycare",
              understandingOf: "Understanding of human behaviour",
              febSunday: "13 Feb, Sunday"),
          TwentyoneItemModel(
              babycare: "Babycare",
              understandingOf: "Understanding of human behaviour")
        ],
        nineteenItemList: [
          NineteenItemModel(
              babycare: "Babycare",
              understandingOf: "Understanding of human behaviour",
              time: "3 min",
              min: ImageConstant.imgLock),
          NineteenItemModel(
              babycare: "Babycare",
              understandingOf: "Understanding of human behaviour")
        ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<EighteenItemModel> newList =
        List<EighteenItemModel>.from(state.homeModelObj!.eighteenItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(eighteenItemList: newList));
  }
}
