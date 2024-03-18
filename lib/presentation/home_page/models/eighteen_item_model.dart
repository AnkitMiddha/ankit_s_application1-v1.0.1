// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [eighteen_item_widget] screen.
class EighteenItemModel extends Equatable {
  EighteenItemModel({
    this.solidFilesBookmark,
    this.isSelected,
  }) {
    solidFilesBookmark = solidFilesBookmark ?? "Programs";
    isSelected = isSelected ?? false;
  }

  String? solidFilesBookmark;

  bool? isSelected;

  EighteenItemModel copyWith({
    String? solidFilesBookmark,
    bool? isSelected,
  }) {
    return EighteenItemModel(
      solidFilesBookmark: solidFilesBookmark ?? this.solidFilesBookmark,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [solidFilesBookmark, isSelected];
}
