part of 'result_cubit.dart';

@immutable
sealed class ResultState {}

final class ResultInitial extends ResultState {}

final class ResultSwitched extends ResultState {}


