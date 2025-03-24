import 'package:equatable/equatable.dart';

class SwitchStates extends Equatable {
  bool enableSwitch;
  double sliderValue;

  SwitchStates({this.enableSwitch = false,this.sliderValue = 0.2});

  SwitchStates copyWith({bool? enableSwitch,double? sliderValue}) {
    return SwitchStates(
      enableSwitch: enableSwitch ?? this.enableSwitch,
      sliderValue: sliderValue ??  this.sliderValue,
    );
  }

  @override
  List<Object?> get props => [enableSwitch,sliderValue,];
}
