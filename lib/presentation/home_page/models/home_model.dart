// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'eighteen_item_model.dart';
import 'twenty_item_model.dart';
import 'twentyone_item_model.dart';
import 'nineteen_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.eighteenItemList = const [],
    this.twentyItemList = const [],
    this.twentyoneItemList = const [],
    this.nineteenItemList = const [],
  }) {}

  List<EighteenItemModel> eighteenItemList;

  List<TwentyItemModel> twentyItemList;

  List<TwentyoneItemModel> twentyoneItemList;

  List<NineteenItemModel> nineteenItemList;

  HomeModel copyWith({
    List<EighteenItemModel>? eighteenItemList,
    List<TwentyItemModel>? twentyItemList,
    List<TwentyoneItemModel>? twentyoneItemList,
    List<NineteenItemModel>? nineteenItemList,
  }) {
    return HomeModel(
      eighteenItemList: eighteenItemList ?? this.eighteenItemList,
      twentyItemList: twentyItemList ?? this.twentyItemList,
      twentyoneItemList: twentyoneItemList ?? this.twentyoneItemList,
      nineteenItemList: nineteenItemList ?? this.nineteenItemList,
    );
  }

  @override
  List<Object?> get props =>
      [eighteenItemList, twentyItemList, twentyoneItemList, nineteenItemList];
}
