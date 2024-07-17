import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'result_state.dart';

class ResultCubit extends Cubit<ResultState> {
  ResultCubit() : super(ResultInitial());
  bool isComp = false;

  void switchComplete(){
    isComp = !isComp;
    emit(ResultSwitched());
  }



}