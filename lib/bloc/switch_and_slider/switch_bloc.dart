import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/bloc/switch_and_slider/switch_events.dart';
import 'package:bloc_tutorial/bloc/switch_and_slider/switch_states.dart';

class SwitchBloc extends Bloc<SwitchEvents, SwitchStates> {
  SwitchBloc() : super(SwitchStates()) {
    on<ToggleSwitchEvent>(_toggleSwitch);
    on<SliderValueEvent>(_changeSliderValue);
  }

  void _toggleSwitch(ToggleSwitchEvent event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(enableSwitch: event.enableSwitch));
  }

  void _changeSliderValue(SliderValueEvent event, Emitter<SwitchStates> emit) {
    emit(state.copyWith(sliderValue: event.sliderValue));
  }
}


