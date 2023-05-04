import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc2/bloc_counter_app/counter_cubit.dart';
import 'package:gdsc2/bloc_counter_app/counter_state.dart';

class BlocCounterApp extends StatelessWidget {
  const BlocCounterApp({super.key});

  // late AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    String word = "";
    late int counter;
    var counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter app"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Your counter is Here : ",
              style: TextStyle(fontSize: 30),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                if (state is CounterIncrementState) {
                  counter = state.counter;
                } else if (state is CounterDecrementState) {
                  counter = state.counter;
                } else if (state is CounterInitState) {
                  counter = state.counter;
                }
                print(counter);
                return Text(
                  "$counter",
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counterCubit.decrement();
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      counterCubit.increment();
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              word,
              style: const TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                onFieldSubmitted: (String input) {},
                onChanged: (String input) {
                  word = input;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
