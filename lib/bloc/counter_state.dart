part of 'counter_bloc.dart';

@immutable
class CounterState {
  int counterValue;
  CounterState({
    required this.counterValue,
  });

  @override
  List<Object> get props => [counterValue];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterValue': counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
    );
  }
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}

class incressmentstate extends CounterState {
  incressmentstate(int incressValue) : super(counterValue: incressValue);
}

class descresmentState extends CounterState {
  descresmentState(decressValue) : super(counterValue: decressValue);
}
