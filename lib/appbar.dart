// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class AppBarWs extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWs({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Image.asset(
              'images/logo.png',
              height: 70,
              fit: BoxFit.contain,
            ),
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
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Notification',
          onPressed: () {
            Navigator.pushNamed(context, '/notifikasi');
          },
        ),
      ],
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildNotificationItem(
            context,
            'Paket Wisata Baru',
            'Kami baru saja menambahkan paket wisata ke Pulau Mentawai. Cek sekarang untuk detail lebih lanjut!',
            Icons.add_alert,
          ),
          _buildNotificationItem(
            context,
            'Diskon Khusus',
            'Dapatkan diskon 20% untuk semua paket wisata hingga akhir bulan ini.',
            Icons.discount,
          ),
          _buildNotificationItem(
            context,
            'Pemeliharaan Sistem',
            'Sistem kami akan mengalami pemeliharaan sementara pada tanggal 5 Agustus dari jam 2 pagi hingga 4 pagi.',
            Icons.system_update,
          ),
          _buildNotificationItem(
            context,
            'Event Spesial',
            'Jangan lewatkan event spesial kami pada tanggal 15 Agustus. Ada berbagai hadiah menarik menunggu Anda!',
            Icons.event,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(BuildContext context, String title, String message, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Color.fromARGB(255, 140, 129, 95)),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(message),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
