import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  //contador
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("counter Functions"),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.person_2_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text(
            '${clickCounter == 1 ? 'clic' : 'clics'}',
            style: const TextStyle(fontSize: 25),
          )
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                clickCounter--;
                if (clickCounter <= 0) return;
                setState(() {});
              })
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton(
      /*this.icon,*/ {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
