import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;});
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Daftar Tugas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,        
      ),
    );
  }
}
