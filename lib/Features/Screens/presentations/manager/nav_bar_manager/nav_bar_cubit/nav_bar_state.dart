part of 'nav_bar_cubit.dart';

@immutable
sealed class NavBarState {}

final class HomeInitialState extends NavBarState {}

final class HomeChangeNavBarState extends NavBarState {}
