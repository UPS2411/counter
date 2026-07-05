import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
 @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CounterScreen(),
   );
 }

}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap:(){
          setState(() {
            count++;
          });
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/bg.jpeg', fit: BoxFit.cover),

              Align(
                alignment: const Alignment(0, -0.5),
                child: Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      )
    );
  }
}