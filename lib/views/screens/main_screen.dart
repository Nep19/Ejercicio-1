// Archivo: lib/views/screens/main_screen.dart

import 'package:my_app/views/counter_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screens = [const CounterView(), const CounterViewTwo()];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ), // IndexedStack
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.two_wheeler),
            activeIcon: const Icon(Icons.motorcycle),
            label: 'Motos',
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person_3_outlined),
            label: 'Users',
            backgroundColor: colors.tertiary,
          ),
        ], // BottomNavigationBarItem
      ), // BottomNavigationBar
    ); // Scaffold
  }
}

class CounterViewTwo extends StatelessWidget {
  const CounterViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Counter View Two'));
  }
}
