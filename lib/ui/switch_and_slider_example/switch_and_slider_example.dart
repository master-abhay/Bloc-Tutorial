import 'package:bloc_tutorial/bloc/switch_and_slider/switch_bloc.dart';
import 'package:bloc_tutorial/bloc/switch_and_slider/switch_events.dart';
import 'package:bloc_tutorial/bloc/switch_and_slider/switch_states.dart';
import 'package:bloc_tutorial/core/constants/app_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchAndSliderExample extends StatefulWidget {
  const SwitchAndSliderExample({super.key});

  @override
  State<SwitchAndSliderExample> createState() => _SwitchAndSliderExampleState();
}

class _SwitchAndSliderExampleState extends State<SwitchAndSliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(context),
    );
  }

  _buildUi(context) {
    return Container(
      padding: kPadding,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Column(
          children: [
            /// switch
            Row(
              children: [
                const Expanded(
                  child: Text("Notifications"),
                ),
                BlocBuilder<SwitchBloc, SwitchStates>(
                    buildWhen: (previous,current) => previous.enableSwitch != current.enableSwitch,
                    builder: (context, state) {
                  return CupertinoSwitch(
                    value: state.enableSwitch,
                    onChanged: (value) {
                      context.read<SwitchBloc>().add(ToggleSwitchEvent(enableSwitch:  value));
                    },
                  );
                }),
              ],
            ),

            mediumHeightSizedBox,



            BlocBuilder<SwitchBloc, SwitchStates>(
              buildWhen: (previous,current)=> previous.sliderValue != current.sliderValue,
              builder: (context, state) {
              return Column(
                children: [
                  /// coloured container
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: state.sliderValue,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      height: 200*state.sliderValue,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  mediumHeightSizedBox,

                  /// slider
                  CupertinoSlider(value: state.sliderValue, onChanged: (value) {
                    context.read<SwitchBloc>().add(SliderValueEvent(sliderValue: value));
                  },),
                ],
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}
