import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() {
    return CounterAppState();
  }
}

class CounterAppState extends State<CounterApp> {
  late int counter;
  late String word;
  // late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    print("===========INITSTATE++++++++++++");
    counter = 0;
    word = 'empty';
  }

  @override
  void dispose() {
    super.dispose();
    // animationController.dispose();
  }

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
            SizedBox(
              height: 40,
            ),
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

class Foo extends StatefulWidget {
  const Foo({Key? key}) : super(key: key);

  @override
  State<Foo> createState() => _FooState();
}

class _FooState extends State<Foo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
