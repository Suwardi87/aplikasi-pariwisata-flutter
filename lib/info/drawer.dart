// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class DrawerWs extends StatelessWidget {
  const DrawerWs({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 140, 129, 95),
            ),
            child: Image.asset(
              'images/logo.png',
              height: 100, // Tinggi gambar logo
              fit: BoxFit.contain,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () {
              // Aksi untuk navigasi ke halaman beranda
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/'); // Menavigasi ke halaman beranda
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Destinasi'),
            onTap: () {
              // Aksi untuk navigasi ke halaman destinasi
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/destinasi'); // Menavigasi ke halaman destinasi
            },
          ),
          ListTile(
            leading: Icon(Icons.local_offer),
            title: Text('Paket Wisata'),
            onTap: () {
              // Aksi untuk navigasi ke halaman paket wisata
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/paket_wisata'); // Menavigasi ke halaman paket wisata
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: Text('Berita'),
            onTap: () {
              // Aksi untuk navigasi ke halaman berita
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/berita'); // Menavigasi ke halaman berita
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Bantuan'),
            onTap: () {
              // Aksi untuk navigasi ke halaman bantuan
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/bantuan'); // Menavigasi ke halaman bantuan
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Kontak'),
            onTap: () {
              // Aksi untuk navigasi ke halaman kontak
              Navigator.pop(context); // Menutup drawer
              Navigator.pushNamed(context, '/kontak'); // Menavigasi ke halaman kontak
            },
          ),
        ],
      ),
    );
  }
}
