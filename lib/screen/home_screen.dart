import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _firstNumController = TextEditingController();
  TextEditingController _secondNumController = TextEditingController();
  int first = 0;
  int second = 0;
  int sum  = 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox.expand(
      child: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter first number",
                border: OutlineInputBorder()
              ),
              controller: _firstNumController,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter second number",
                border: OutlineInputBorder()
              ),
              controller: _secondNumController,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                 first = int.parse(_firstNumController.text);
                 second = int.parse(_secondNumController.text);
                 sum = first + second;
              });
            },
              child: Text("Add"),
            ),
            Text('The sum is $sum')
          ]
        ),
      ),
    );
  }
}
