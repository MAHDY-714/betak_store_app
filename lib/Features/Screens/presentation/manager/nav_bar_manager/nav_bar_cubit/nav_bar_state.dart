part of 'nav_bar_cubit.dart';

@immutable
sealed class NavBarState {}

final class InitialState extends NavBarState {}

final class ChangeNavBarState extends NavBarState {}
