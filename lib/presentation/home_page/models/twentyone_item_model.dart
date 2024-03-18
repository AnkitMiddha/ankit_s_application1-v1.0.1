
/// This class is used in the [twentyone_item_widget] screen.
class TwentyoneItemModel {
  TwentyoneItemModel({
    this.babycare,
    this.understandingOf,
    this.febSunday,
    this.id,
  }) {
    babycare = babycare ?? "Babycare";
    understandingOf = understandingOf ?? "Understanding of human behaviour";
    febSunday = febSunday ?? "13 Feb, Sunday";
    id = id ?? "";
  }

  String? babycare;

  String? understandingOf;

  String? febSunday;

  String? id;
}
