// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Appbar2 extends StatelessWidget implements PreferredSizeWidget {
  const Appbar2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        tooltip: 'Kembali ke Beranda',
        onPressed: () {
          Navigator.pushNamed(context, '/'); // Navigasi ke Halaman Beranda
        },
      ),
      title: Row(
        children: [
          Image.asset(
            'images/logo.png',
            height: 70, // Tinggi gambar logo
            fit: BoxFit.contain,
          ),
          SizedBox(width: 5),
          Text(
            'WISATA SUMBAR',
            style: TextStyle(
              fontSize: 17, // Ukuran font
              fontWeight: FontWeight.bold, // Ketebalan font
              fontStyle: FontStyle.italic, // Gaya font miring
              letterSpacing: 2.0, // Jarak antar huruf
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 6.0),
          child: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
