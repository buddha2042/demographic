import 'package:demography/form_comp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/back.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Add a new record',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const Text('Add a new record',
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
          FormComp(hint: 'John', label: 'First Name'),
          FormComp(hint: 'Walker', label: 'Last Name'),
          FormComp(hint: 'YYYY-MM-DD', label: 'Birthday'),
          FormComp(hint: 'eg.25', label: 'Age'),
          FormComp(hint: 'username@host.com', label: 'Email'),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  minimumSize: const Size(75.0, 40.0),
                  primary: const Color.fromARGB(255, 37, 82, 131)),
              onPressed: () {},
              child: const Text('Add'))
        ],
      ),
    ));
  }
}
