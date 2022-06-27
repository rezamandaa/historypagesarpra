import 'package:flutter/material.dart';

class NavbarRiwayat extends StatefulWidget {

  @override
  State<NavbarRiwayat> createState() => _NavbarRiwayatState();
}

class _NavbarRiwayatState extends State<NavbarRiwayat> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) => BottomNavigationBar(
      selectedLabelStyle: Theme.of(context).textTheme.button,
      unselectedLabelStyle: Theme.of(context).textTheme.button,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
            ? const Icon(Icons.article_sharp)
            : const Icon(Icons.article_outlined),
          label: 'Lapor'
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
            ? const Icon(Icons.access_time_filled_outlined)
            : const Icon(Icons.access_time_outlined),
          label : 'Riwayat'
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
            ? const Icon(Icons.account_circle_sharp)
            : const Icon(Icons.account_circle_outlined),
          label: 'Akun'
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    
  );
}