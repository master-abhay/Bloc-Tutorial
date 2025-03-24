import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/counter/counter_events.dart';
import 'package:bloc_tutorial/bloc/counter/counter_states.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc() : super(const CounterStates()) {
    on<IncrementCounterEvent>(_increment);
    on<DecrementCounterEvent>(_decrement);
  }

  void _increment(IncrementCounterEvent event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(DecrementCounterEvent event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
