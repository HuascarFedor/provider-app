import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/models/counter_model.dart';
import '../widgets/action_button.dart';
import '../widgets/counter_display.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo Counter Provider'),
      ),
      body: const Center(
        child: CounterDisplay(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ActionButton(
            icon: const Icon(Icons.add), 
            onAction: counterModel.increment,
          ),
          const SizedBox(height: 10,),
          ActionButton(
            icon: const Icon(Icons.remove),
            onAction: counterModel.decrement,
          )
        ],
      ),
    );
  }
}