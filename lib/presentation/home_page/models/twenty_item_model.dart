import '../../../core/app_export.dart';

/// This class is used in the [twenty_item_widget] screen.
class TwentyItemModel {
  TwentyItemModel({
    this.lifestyle,
    this.lifestyle1,
    this.aCompleteGuide,
    this.lessonsCounter,
    this.id,
  }) {
    lifestyle = lifestyle ?? ImageConstant.imgG12;
    lifestyle1 = lifestyle1 ?? "Lifestyle";
    aCompleteGuide =
        aCompleteGuide ?? "A complete guide for your new born baby";
    lessonsCounter = lessonsCounter ?? "16 lessons";
    id = id ?? "";
  }

  String? lifestyle;

  String? lifestyle1;

  String? aCompleteGuide;

  String? lessonsCounter;

  String? id;
}
