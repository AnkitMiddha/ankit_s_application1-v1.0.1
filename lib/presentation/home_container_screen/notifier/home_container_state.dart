// ignore_for_file: must_be_immutable

part of 'home_container_notifier.dart';

/// Represents the state of HomeContainer in the application.
class HomeContainerState extends Equatable {
  HomeContainerState({this.homeContainerModelObj});

  HomeContainerModel? homeContainerModelObj;

  @override
  List<Object?> get props => [
        homeContainerModelObj,
      ];

  HomeContainerState copyWith({HomeContainerModel? homeContainerModelObj}) {
    return HomeContainerState(
      homeContainerModelObj:
          homeContainerModelObj ?? this.homeContainerModelObj,
    );
  }
}
