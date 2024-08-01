// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Koneksi ke Halaman
import 'destination.dart';
import 'tour.dart';
import 'news.dart';
import 'account.dart';
import 'appbar.dart';
import 'tabbar.dart';
import 'footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 140, 129, 95),
          foregroundColor: Colors.white,
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabBarNav(), // Rute Halaman Beranda
        '/destinasi': (context) => DestinationPage(), //Rute Halaman Destinasi
        '/wisata': (context) => TourPage(), // Rute Halaman Wisata
        '/berita': (context) => NewsPage(), // Rute Halaman Berita
        '/akun': (context) => AccountPage(), // Rute Halaman Akun
        '/notifikasi': (context) => NotificationPage(), // Rute Halaman Notifikasi
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWs(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Selamat Datang di Wisata Sumbar!',
                    style: TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Temukan keindahan alam dan budaya Sumatera Barat. Siap untuk petualangan Anda?',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context);
                      Navigator.pushNamed(context,
                        '/destinasi');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black,
                    ),
                    child: Text('Jelajahi Sekarang'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Destinasi Unggulan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context);
                          Navigator.pushNamed(context,
                            '/destinasi');
                        },
                        child: Row(
                          children: const [
                            Text('Lihat Semua'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(cardImageUrls.length, (index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    cardImageUrls[index],
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 200,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.error); // Tampilkan ikon error jika gagal memuat gambar
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      cardTitles[index], // Judul sesuai dengan index
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      cardDescriptions[index], // Deskripsi sesuai dengan index
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => DestinationScreen(
                                                image: cardImageUrls[index],
                                                name: cardTitles[index],
                                                detail: 'Detail informasi dari destinasi ${cardTitles[index]}',
                                                description: cardDescriptions[index],
                                                location: cardLocations[index],
                                              ),
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue, // Warna latar belakang tombol
                                          foregroundColor: Colors.white, // Warna teks tombol
                                        ),
                                        child: Text('Lihat Detail'),    
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            )
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo dan Penawaran Khusus',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => TourPage()),
                      );
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Image.asset(
                            'images/promosi.jpg',
                            height: 90,
                            fit: BoxFit.contain,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Paket Promo Tour Sumbar',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Dengan Paket Promo Tour Sumbar, Anda dapat mengunjungi berbagai kota menarik di Sumatera Barat. Sesuaikan rencana perjalanan Anda sendiri dan nikmati liburan yang sesuai dengan keinginan Anda.',
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    'Last updated 3 mins ago',
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Testimoni Pengguna',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  CarouselSlider(
                    options: CarouselOptions(height: 200.0),
                    items: testimonials.map((testimoni) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    testimoni['name']!,
                                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    testimoni['content']!,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Artikel Blog',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context);
                          Navigator.pushNamed(context,
                            '/berita');
                        },
                        child: Row(
                          children: const [
                            Text('Lihat Semua'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(blogImageUrls.length, (index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            child: SizedBox(
                              width: 325,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    blogImageUrls[index],
                                    fit: BoxFit.cover,
                                    height: 170,
                                    width: 325,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(Icons.error);
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      blogTitles[index], // Judul sesuai dengan index
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.newspaper),
                                        SizedBox(width: 4),
                                        Text(
                                          blogDates[index],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      blogDescriptions[index], // Deskripsi sesuai dengan index
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NewsScreen(
                                                image: blogImageUrls[index],
                                                title: blogTitles[index],
                                                date: blogDates[index],
                                                location: blogLocations[index],
                                                description: blogDescriptions[index],
                                              ),
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,
                                        ),
                                        child: Text('Baca Selengkapnya'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            )
                          )
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            FooterWs(),
          ],
        ),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  final String image;
  final String name;
  final String detail;
  final String description;
  final String location;

  const DestinationScreen({
    super.key,
    required this.image,
    required this.name,
    required this.detail,
    required this.description,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Color.fromARGB(255, 140, 129, 95),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Main Image
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Image.asset(image),
            ),
            // Title
            Text(
              name,
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Location
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 4),
                Text(
                  location,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Detail Section
            Text(
              detail,
              style: const TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            // Description
            Text(
              description,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 16.0),
            // Additional Information
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Informasi',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Example Info List
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Informasi 1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Informasi 2'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Informasi 3'),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Harga',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Harga Anak-Anak: Rp.5000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Harga Dewasa: Rp.10000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Paket Keluarga: Rp.25000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle),
                      title: Text('Harga Spesial Weekend: Rp.15000'),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 
                      '/reservasi');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black
                  ),
                  child: Text('Reservasi'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            FooterWs(),
          ]
        ),    
      ),
    );
  }
}

class NewsScreen extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String location;
  final String description;

  const NewsScreen({
    super.key,
    required this.image,
    required this.title,
    required this.date,
    required this.location,
    required this.description, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromARGB(255, 140, 129, 95),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Main Image
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Image.asset(image),
            ),
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Location
            Row(
              children: [
                Icon(Icons.date_range),
                SizedBox(width: 4),
                Text(
                  date,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 4),
                Text(
                  location,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Content
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            FooterWs(),
          ]
        ),    
      ),
    );
  }
}

// Destinasi Unggulan
  // Daftar URL gambar
    final List<String> cardImageUrls = [
      'images/pantai_padang/1.jpg',
      'images/ngarai_sianok/1.jpeg',
      'images/lembah_harau/1.jpg',
      'images/danau_kembar/1.jpg',
    ];

  // Daftar Judul dan Deskripsi
    final List<String> cardTitles = [
      'Pantai Padang',
      'Ngarai Sianok',
      'Lembah Harau',
      'Danau Kembar',
    ];

    final List<String> cardLocations = [
      'Purus, Kota Padang',
      'IV Koto, Kabupaten Agam',
      'Tarantang, Kabupaten Limapuluh Kota',
      'Alahan Panjang, Kabupaten Solok',
    ];

    final List<String> cardDescriptions = [
      'Pantai Padang ini populer dengan sebutan Taplau (Tapi Lauik) yang berarti Tepi Laut.',
      'Ngarai Sianok yang dalam dan curam ini menyajikan pemandangan alam yang spektakuler. Anda bisa menikmati keindahan alam dari berbagai sudut pandang.',
      'Lembah Harau adalah sebuah ngarai dekat Kota Payakumbuh di Kabupaten Limapuluh Koto.',
      'Danau Kembar adalah danau dua danau yang letaknya berdampingan berjarak sekitar 300 meter.',
    ];

// Testimoni Pengguna
  final List<Map<String, String>> testimonials = [
    {'name': 'Fahrezi', 'content': 'Pengalaman yang seru! Pemandu wisatanya sangat baik dan destinasinya memukau.'},
    {'name': 'Renaldy', 'content': 'Pelayanan yang luar biasa dan pemandangan yang memukau. Saya pasti akan kembali lagi.'},
    {'name': 'Rivaldi', 'content': 'Pengalaman yang tak terlupakan bersama keluarga. Terima kasih Wisata Sumbar!'},
    {'name': 'Suwardi', 'content': 'Setiap sudut Sumatera Barat menyimpan keindahan yang tak terduga dan sangat menyenangkan!'},    
  ];

// Artikel Blog
  // Daftar URL Gambar
    final List<String> blogImageUrls = [
      'images/berita/1.jpeg',
      'images/berita/2.jpg',
      'images/berita/3.jpeg',
      'images/berita/4.jpeg',
    ];

    final List<String> blogDates = [
      '24 Mei 2024',
      '02 Juni 2024',
      '14 Juni 2024',
      '26 Juni 2024'
    ];

    final List<String> blogLocations = [
      'Koto Berapak, Kabupaten Pesisir Selatan',
      'Alahan Panjang, Kabupaten Solok',
      'Guguk Panjang, Kota Bukittinggi',
      'Pasie Laweh, Kabupaten Tanah Datar',
    ];

    final List<String> blogTitles = [
      'Rasakan serunya liburan di Air Terjun Bayang Sani',
      'Yuk, cobain berkunjung ke Kebun Teh di Solok!',
      'Jumlah kunjungan wisata di Bukittinggi menurun?',
      'Gunung Marapi Erupsi Kembali, Jaga Keselamatan!',
    ];

    final List<String> blogDescriptions = [
      'Air Terjun Bayang Sani di Pesisir Selatan menawarkan pemandangan yang menakjubkan dan kesegaran yang menyegarkan, mengundang para pelancong untuk menjelajahi keajaiban alam ini. Air Terjun Bayang Sani ini sering menjadi daya tarik utama bagi para wisatawan yang mengunjungi daerah tersebut. Lokasinya yang mudah dijangkau, baik dari pusat kota maupun dari pantai terdekat, membuatnya menjadi destinasi wisata yang populer bagi semua kalangan. Dengan keindahan alamnya yang menakjubkan, air terjun di pesisir selatan merupakan destinasi wisata yang tidak boleh dilewatkan bagi para pencinta alam dan petualang.',
      'Kebun teh merupakan salah satu destinasi wisata yang menarik dan populer di Indonesia, tak terkecuali di Sumatera Barat, Pemandangan yang memukau, udara segar, dan kesempatan untuk belajar tentang teh membuat wisata kebun teh menjadi pilihan yang menarik untuk menghabiskan waktu liburan. Kebun Teh ini berada di Jorong Aia Batumbuak ,Nagari Batang Barus Kecamatan Gunung Talang. Kebuh teh Alahan Panjang menyuguhkan pemandangan yang hijau ranau, udaranya yang sejuk dan serunya lagi daerah ini jauh dari kemacetan. Di belakang kebun teh ini, terlihat juga pemandangan Gunung Talang yang berdiri dengan gagahnya. Bagi yang hobi berfoto, tempat ini sangat cocok anda kunjungi.',
      'Pemkot Bukittinggi mencatat, jumlah pengunjung yang masuk ke objek wisata berbayar selama libur lebaran di kota itu menurun dibandingkan tahun sebelumnya, Sementara pada periode yang sama 2023 sebanyak 153.542 orang dengan PAD mencapai Rp3,3, miliar. Pemkot Bukittinggi mencatat, jumlah pengunjung yang masuk ke objek wisata berbayar selama libur lebaran di kota itu menurun dibandingkan tahun sebelumnya, yakni 100.218 orang dengan Pendapat Asli Daerah (PAD) yang dicapai Rp 2,2 miliar.',
      'BKSDA Sumbar mengumumkan menutup jalur pendakian yang berada di pengawasannya di momen pergantian tahun mendatang. Penutupan ini sampai waktu yang tidak ditentukan. Dilihat dalam akun Instagramnya, Selasa (19/12/2023) untuk mengantisipasi pendakian pada penghujung tahun dan awal tahun 2024, BKSDA Sumbar memutuskan untuk menutup 4 gunung alam yang berada di pengawasannya. Untuk mengantisipasi pendaki melakukan pendakian pada penghujung tahun 2023 dan awal tahun baru 2024, Balai KSDA Sumatera Barat mengeluarkan pengumuman penutupan gunung dalam pengelolaannya tidak hanya Gunung Marapi saja, namun juga Gunung Singgalang, Gunung Tandikek dan Gunung Sago sampai dengan waktu yang belum ditentukan, tulis BKSDA Sumbar dalam caption postingannya.',
    ];