import 'package:bloc/bloc.dart';
import 'package:gdsc2/bloc_counter_app/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitState(0));

  int _counter = 0;

  void increment() {
    _counter++;
    emit(CounterIncrementState(_counter));
  }

  void decrement() {
    _counter--;
    emit(CounterDecrementState(_counter));
  }
}
