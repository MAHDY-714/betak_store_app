part of 'my_cart_cubit.dart';

sealed class MyCartState extends Equatable {
  const MyCartState();

  @override
  List<Object> get props => [];
}

final class MyCartInitial extends MyCartState {}
