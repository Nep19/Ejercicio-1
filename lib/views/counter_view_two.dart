import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contador MVVM')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador: ${counterViewModel.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón para decrementar
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                // Nuevo botón para resetear
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.reset();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.orange, // Color naranja para diferenciarlo
                  ),
                  child: const Text('Resetear'),
                ),
                const SizedBox(width: 20),
                // Botón para incrementar
                ElevatedButton(
                  onPressed: () {
                    counterViewModel.increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
