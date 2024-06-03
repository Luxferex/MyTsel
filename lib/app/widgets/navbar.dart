import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history_toggle_off,
            size: 35,
          ),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.help,
            size: 35,
          ),
          label: 'Bantuan',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mail,
            size: 35,
          ),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 35,
          ),
          label: 'Akun Saya',
        ),
      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
    );
  }
}
