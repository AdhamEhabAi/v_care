part of 'result_cubit.dart';

@immutable
abstract class ResultState {}

class ResultInitial extends ResultState {}

class ResultSwitched extends ResultState {}

class ResultPageChanged extends ResultState {
  final bool isComp;

  ResultPageChanged(this.isComp);
}
