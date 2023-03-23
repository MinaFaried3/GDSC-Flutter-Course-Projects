import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() {
    return CounterAppState();
  }
}

class CounterAppState extends State<CounterApp> {
  int counter = 0;
  String word = 'empty';
  @override
  Widget build(BuildContext context) {
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
            Text(
              "$counter",
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                        print("counter = $counter");
                      });
                    },
                    child: const Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                        print("counter = $counter");
                      });
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
            SizedBox(height: 40,),
            Text(
              word,
              style: const TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                onFieldSubmitted: (String input) {
                  setState(() {
                    word = input;
                  });
                },
                onChanged: (String input) {
                  setState(() {});
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
