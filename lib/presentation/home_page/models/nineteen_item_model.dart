import '../../../core/app_export.dart';

/// This class is used in the [nineteen_item_widget] screen.
class NineteenItemModel {
  NineteenItemModel({
    this.babycare,
    this.understandingOf,
    this.time,
    this.min,
    this.id,
  }) {
    babycare = babycare ?? "Babycare";
    understandingOf = understandingOf ?? "Understanding of human behaviour";
    time = time ?? "3 min";
    min = min ?? ImageConstant.imgLock;
    id = id ?? "";
  }

  String? babycare;

  String? understandingOf;

  String? time;

  String? min;

  String? id;
}
