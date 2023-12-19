import 'dart:developer';
import 'package:flutter_1/second_page/second_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NegizgiBet(),
    );
  }
}

class NegizgiBet extends StatefulWidget {
  const NegizgiBet({super.key});

  @override
  State<NegizgiBet> createState() => _NegizgiBetStates();
}

class _NegizgiBetStates extends State<NegizgiBet> {
  int san = 0;
  kosh() {
    print('basylyp atat!');
    setState(() {});
    san = san + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 178, 222, 88),
        leading: const Icon(Icons.image),
        title: const Text(' Tapshyrma_1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 115, 21, 187).withOpacity(0.8),
            ),
            height: 44.0,
            width: 325.0,
            child: Center(
              child: Text(
                'San:$san',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          // !
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print('basylyp atat!');
                  setState(() {});
                  log('san  -> $san');
                  san = san - 1;
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 80, 186, 31),
                  ),
                  width: 90.0,
                  height: 50.0,
                  child: const Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Color.fromARGB(255, 104, 213, 182),
                        height: 0.75,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  kosh();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 53, 92, 177),
                  ),
                  width: 90.0,
                  height: 50.0,
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 80.0,
                        color: Color.fromARGB(255, 20, 119, 195),
                        height: 0.73,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.next_plan,
              size: 60,
            ),
            onPressed: () {
              log('Second Screeen');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(
                    text: san,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
