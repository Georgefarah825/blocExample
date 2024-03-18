part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class incressment extends CounterEvent {}

class decressment extends CounterEvent {}
