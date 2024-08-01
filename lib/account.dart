// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// Koneksi ke Halaman
import 'appbar.dart';
import 'footer.dart';

void main() {
  runApp(AccountPage());
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWs(),
      body: Column(
        children: [
          UserAccountHeader(),
          Expanded(
            child: ListView(
              children: const [
                AccountSection(
                  title: 'Menu',
                  items: [
                    AccountItem(
                      title: 'Riwayat Pemesanan',
                      destination: BookingPage(),
                      icon: Icon(Icons.history, color: Colors.deepPurple), 
                    ),
                    AccountItem(
                      title: 'Favorit Anda',
                      destination: FavoritePage(),
                      icon: Icon(Icons.favorite, color: Colors.red), 
                    ),
                    AccountItem(
                      title: 'Kata Sandi',
                      destination: PasswordPage(),
                      icon: Icon(Icons.lock, color: Colors.indigo),
                    ),
                    AccountItem(
                      title: 'Bantuan',
                      destination: SupportPage(),
                      icon: Icon(Icons.help, color: Colors.orange),
                    ),
                    AccountItem(
                      title: 'Kontak',
                      destination: ContactPage(),
                      icon: Icon(Icons.perm_phone_msg, color: Colors.green), 
                    ),
                    AccountItem(
                      title: 'Tentang Kami',
                      destination: AboutUsPage(),
                      icon: Icon(Icons.info, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppVersionAndLogout(),
        ],
      ),
    );
  }
}

class UserAccountHeader extends StatelessWidget {
  const UserAccountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AccountScreen()),
        );
      },
      child: Container(
        color: Color.fromARGB(255, 140, 129, 95),
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.account_circle,
                color: Colors.grey,
                size: 40,
              ),
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reyhan Aldhika Saputra',
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 18
                  ),
                ),
                Text(
                  'Akun Anda',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AccountSection extends StatelessWidget {
  final String title;
  final List<AccountItem> items;

  const AccountSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18
            ),
          ),
        ),
        ...items,
        Divider(
          height: 15, 
          color: Colors.grey
        ),
      ],
    );
  }
}

class AccountItem extends StatelessWidget {
  final String title;
  final Widget destination;
  final Icon icon;

  const AccountItem({
    super.key, 
    required this.title,
    required this.destination,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            icon,
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 18)
              ),
            ),
            Icon(
              Icons.chevron_right, 
              color: Colors.black
            ), // Panah kanan
          ],
        ),
      ),
    );
  }
}

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pemesanan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildBookingCard(
            context,
            'Paket Wisata Padang',
            '4 Hari 3 Malam',
            '1-4 Juli 2024',
            'images/paket_wisata/padang.jpg',
          ),
          _buildBookingCard(
            context,
            'Paket Wisata Bukittinggi',
            '3 Hari 2 Malam',
            '7-9 Agustus 2024',
            'images/paket_wisata/bukittinggi.jpg',
          ),
          _buildBookingCard(
            context,
            'Paket Wisata Pariaman',
            '3 Hari 2 Malam',
            '11-15 September 2024',
            'images/paket_wisata/pariaman.jpg',
          ),
          _buildBookingCard(
            context,
            'Paket Wisata Solok',
            '4 Hari 3 Malam',
            '20-22 Oktober 2024',
            'images/paket_wisata/solok.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildBookingCard(BuildContext context, String title, String duration, String date, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              imagePath, 
              fit: BoxFit.fill
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
                Text(
                  duration,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 8),
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Lihat Detail'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorit Anda'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildFavoriteCard(
            context,
            'Bukittinggi',
            'Nikmati keindahan alam dan budaya Bukittinggi. Termasuk kunjungan ke Jam Gadang, Ngarai Sianok, dan banyak lagi.',
            'images/paket_wisata/bukittinggi.jpg',
          ),
          _buildFavoriteCard(
            context,
            'Padang',
            'Jelajahi pesona Kota Padang dengan tempat-tempat menarik seperti Pantai Air Manis dan Jembatan Siti Nurbaya.',
            'images/paket_wisata/padang.jpg',
          ),
          _buildFavoriteCard(
            context,
            'Mentawai',
            'Petualangan seru di Kepulauan Mentawai dengan aktivitas selancar, snorkeling, dan eksplorasi budaya lokal.',
            'images/paket_wisata/mentawai.jpg',
          ),
          _buildFavoriteCard(
            context,
            'Solok',
            'Eksplorasi keindahan alam Solok dengan kunjungan ke Danau Singkarak dan Kebun Teh Alahan Panjang.',
            'images/paket_wisata/solok.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildFavoriteCard(BuildContext context, String title, String description, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              imagePath, 
              fit: BoxFit.fill
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Lihat Detail'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kata Sandi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukkan Kata Sandi Lama Anda',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Masukkan Kata Sandi Baru Anda',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi Baru Anda',
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
              child: Text('Ubah Kata Sandi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: Text('Lupa Kata Sandi'),
            ),
          ],
        ),
      ),
    );
  }
}

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              Text(
                'Pertanyaan yang Sering Diajukan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ExpansionTile(
                title: Text('Apa itu Wisata Sumbar?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Wisata Sumbar adalah platform untuk menemukan dan merencanakan perjalanan ke berbagai destinasi wisata di Sumatera Barat, Indonesia.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Bagaimana cara memesan tiket?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Untuk memesan tiket, Anda dapat mengunjungi halaman destinasi yang Anda pilih, lalu mengikuti petunjuk untuk melakukan pemesanan dan pembayaran.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Bagaimana cara menghubungi layanan pelanggan?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Anda dapat menghubungi layanan pelanggan kami melalui halaman Kontak di situs web kami.',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Divider(),
              Footer2(),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Kontak Kami',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Berikut adalah informasi kontak kami. Jangan ragu untuk menghubungi kami jika Anda memiliki pertanyaan atau memerlukan bantuan lebih lanjut.',
              ),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Jalan Contoh No. 123, Kota Contoh, Indonesia'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('+62 123 4567'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('info@wisatasumbar.com'),
                onTap: () {
                  // Handle email tap
                },
              ),
              SizedBox(height: 32),
              Text(
                'Hubungi Kami',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Pesan',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Colors.yellow,
                  ),
                  child: Text(
                    'Kirim Pesan',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Footer2(),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Kami'),
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tentang Wisata Sumbar',
              style: TextStyle(
                fontSize: 18, // Ukuran font
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Wisata Sumbar adalah aplikasi wisata yang dirancang khusus untuk memudahkan Anda menjelajahi keindahan dan kekayaan budaya Sumatera Barat. Dengan berbagai fitur unggulan, Wisata Sumbar menawarkan panduan lengkap tentang destinasi wisata, kuliner khas, serta acara dan kegiatan menarik yang ada di daerah ini.',
            ),
            SizedBox(height: 16),
            Text(
              'Fitur Utama:',
              style: TextStyle(
                fontSize: 18, // Ukuran font
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            _buildFeatureItem('Informasi lengkap tentang tempat wisata terkenal di Sumatera Barat.'),
            _buildFeatureItem('Panduan kuliner dengan rekomendasi makanan khas daerah.'),
            _buildFeatureItem('Kalender acara dan kegiatan yang sedang berlangsung.'),
            _buildFeatureItem('Fitur navigasi untuk memudahkan perjalanan Anda.'),
            SizedBox(height: 16),
            Text(
              'Kami berharap aplikasi ini dapat membantu Anda dalam merencanakan perjalanan Anda dan mengeksplorasi keindahan Sumatera Barat. Terima kasih telah menggunakan Wisata Sumbar!',
            ),
            Footer2(),
          ],
        ),
      )),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(Icons.check_circle, size: 20, color: Colors.green),
        SizedBox(width: 8),
        Expanded(
          child: Text(text, style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}


class AppVersionAndLogout extends StatelessWidget {
  const AppVersionAndLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Versi Aplikasi 1.1.0'),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow, // background
              foregroundColor: Colors.black, // foreground
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text('Log Out'),
          ),
        ),
      ],
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Anda'),
        backgroundColor: Color.fromARGB(255, 140, 129, 95),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 140, 129, 95),
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              width: double.infinity,
              child: Column(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.grey,
                      size: 80, // Set the icon size to be bigger
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Reyhan Aldhika Saputra',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.stars, color: Colors.blueGrey),
              title: Text('Poin Anda'),
              onTap: () {
              },
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.update, color: Colors.blueGrey),
              title: Text('Aktivitas Anda'),
              onTap: () {
                // Handle tap event
              },
            ),
            Divider(height: 1),
            ListTile(
              title: Text('No. Handphone'),
              subtitle: Text('Masukkan No. Handphone Anda'),
              trailing: Icon(Icons.edit, color: Color.fromARGB(255, 140, 129, 95)),
              onTap: () {},
            ),
            Divider(height: 1),
            ListTile(
              title: Text('Alamat Email'),
              subtitle: Text('Masukkan Alamat Email Anda'),
              trailing: Icon(Icons.edit, color: Color.fromARGB(255, 140, 129, 95)),
              onTap: () {},
            ),
            Divider(height: 1),
            ListTile(
              title: Text('Perangkat Terhubung'),
              subtitle: Text('Perangkat Anda yang Terhubung'),
            ),
            Divider(height: 1),
            ListTile(
              title: Text('Versi Aplikasi'),
              subtitle: Text('1.1.0'),
            ),
          ],
        ),
      ),
    );
  }
}