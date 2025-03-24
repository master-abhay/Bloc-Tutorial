import 'package:bloc_tutorial/bloc/counter/counter_bloc.dart';
import 'package:bloc_tutorial/bloc/counter/counter_events.dart';
import 'package:bloc_tutorial/bloc/counter/counter_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter View"),),
      body: _buildUi(),
    );
  }

  Widget _buildUi() {

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        BlocBuilder<CounterBloc,CounterStates>(builder: (context,state){
          return Center(child: Text(state.counter.toString(),style: const TextStyle(color: Colors.green,fontSize: 50,fontWeight: FontWeight.bold,),));
        }),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


          MaterialButton(onPressed: (){context.read<CounterBloc>().add(DecrementCounterEvent());},color: Colors.red, child: const Text("Decrement",style: TextStyle(color: Colors.white)),),
          MaterialButton(onPressed: (){context.read<CounterBloc>().add(IncrementCounterEvent());},color: Colors.green, child: const Text("Increment",style: TextStyle(color: Colors.white)),),
        ],)
      ],
    );
  }

}
