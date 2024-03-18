import 'package:flutter/cupertino.dart';
import 'bloc_import.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<incressment>((Event, emit) {
      emit(incressmentstate(state.counterValue + 1));
    });

    on<decressment>((Event, emit) {
      emit(descresmentState(state.counterValue - 1));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
