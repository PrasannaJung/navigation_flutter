import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  double simpleInterest = 0.0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox.expand(
      // find out simple interest
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter principal",
              border: OutlineInputBorder()
            ),
            controller: _principalController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter rate",
              border: OutlineInputBorder()
            ),
            controller: _rateController,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter time",
              border: OutlineInputBorder()
            ),
            controller: _timeController,
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                double principal = double.parse(_principalController.text);
                double rate = double.parse(_rateController.text);
                double time = double.parse(_timeController.text);
                simpleInterest = (principal * rate * time) / 100;
              });
            },
            child: Text("Calculate"),
          ),
          Text('The simple interest is $simpleInterest')
        ],
      )
    );
  }
}
