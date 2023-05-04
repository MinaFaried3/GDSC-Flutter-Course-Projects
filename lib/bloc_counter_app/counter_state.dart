abstract class CounterState {}

class CounterInitState extends CounterState {
  final int counter;

  CounterInitState(this.counter);
}

class CounterIncrementState extends CounterState {
  final int counter;

  CounterIncrementState(this.counter);
}

class CounterDecrementState extends CounterState {
  final int counter;

  CounterDecrementState(this.counter);
}
