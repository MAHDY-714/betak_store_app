part of 'my_cart_cubit.dart';

sealed class MyCartState extends Equatable {
  const MyCartState();

  @override
  List<Object> get props => [];
}

final class MyCartInitial extends MyCartState {}

final class AddItemInMyCartSuccessState extends MyCartState {
  // final List<MyCartModel>? myCartModelList;
  // const AddItemInMyCartSuccess({this.myCartModelList});
}

final class AddItemInMyCartFailureState extends MyCartState {
  final String errorMessage;
  const AddItemInMyCartFailureState({required this.errorMessage});
}

final class RemoveItemInMyCartSuccessState extends MyCartState {}

final class RemoveItemInMyCartFailureState extends MyCartState {
  final String errorMessage;
  const RemoveItemInMyCartFailureState({required this.errorMessage});
}

final class MyCartLoadingState extends MyCartState {}

final class MyCartSuccessState extends MyCartState {
  final List<MyCartModel>? myCartModelList;
  const MyCartSuccessState({this.myCartModelList});
}

final class MyCartFailure extends MyCartState {
  final String errorMessage;

  const MyCartFailure({required this.errorMessage});
}

final class CounterPlusInMyCartSuccessState extends MyCartState {
  
}

final class CounterMinusInMyCartSuccessState extends MyCartState {
  
}
