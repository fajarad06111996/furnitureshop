import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furnitureshop/page/akun_page.dart';
import 'package:furnitureshop/page/dash_page.dart';
import 'package:furnitureshop/page/kategori_page.dart';
import 'package:furnitureshop/page/keranjang_page.dart';

class bottomnavbar extends StatefulWidget {
  const bottomnavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _selectedNarvbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNarvbar = index;
    });
  }

  final _widgetOptions = [
    AkunPage(),
    KategoriPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: 'Produk',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Kategori',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Akun',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc_sharp),
          label: 'Lain',
        )
      ],
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _changeSelectedNavBar,
    );
  }
}
