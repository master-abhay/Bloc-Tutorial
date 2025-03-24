import 'package:equatable/equatable.dart';

abstract class SwitchEvents extends Equatable {
  const SwitchEvents();

  @override
  List<Object?> get props => [];
}

class ToggleSwitchEvent extends SwitchEvents {
  final bool enableSwitch;
  const ToggleSwitchEvent({required this.enableSwitch});

  @override
  List<Object?> get props => [enableSwitch];
}

class SliderValueEvent extends SwitchEvents {
  final double sliderValue;

  const SliderValueEvent({required this.sliderValue});

  @override
  List<Object?> get props => [sliderValue];
}
