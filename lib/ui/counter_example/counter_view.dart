import 'package:bloc_tutorial/bloc/counter/counter_bloc.dart';
import 'package:bloc_tutorial/bloc/counter/counter_events.dart';
import 'package:bloc_tutorial/bloc/counter/counter_states.dart';
import 'package:bloc_tutorial/core/controllers/session_controller/base_session_controller.dart';
import 'package:bloc_tutorial/core/services/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  late CounterBloc _counterBloc;

  @override
  void initState() {
  _counterBloc = CounterBloc();
  super.initState();
  }

  @override
  void dispose() {
  _counterBloc.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    debugPrint("Building build");
    return BlocProvider(create: (_)=>_counterBloc,
    child: Scaffold(
      appBar: AppBar(title: const Text("Counter View"),automaticallyImplyLeading: true,),
      floatingActionButton: FloatingActionButton(onPressed: (){
        getIt<BaseSessionController>().clearSessionData();
      }),
      body: _buildUi(),
    ),
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
            BlocBuilder<CounterBloc,CounterStates>(
              buildWhen: (prev,curr)=>false,
              builder: (context,state){
            debugPrint("Building -");
            return MaterialButton(onPressed: (){context.read<CounterBloc>().add(DecrementCounterEvent());},color: Colors.red, child: const Text("Decrement",style: TextStyle(color: Colors.white)),);
          }),

            BlocBuilder<CounterBloc,CounterStates>(
                buildWhen: (prev,curr)=>false,
                builder: (context,state){
              debugPrint("Building +");
              return MaterialButton(onPressed: (){context.read<CounterBloc>().add(IncrementCounterEvent());},color: Colors.green, child: const Text("Increment",style: TextStyle(color: Colors.white)),);
            }),

        ],
        ),
      ],
    );
  }

}
