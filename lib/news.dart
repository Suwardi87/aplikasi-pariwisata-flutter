// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

// Koneksi ke Halaman
import 'appbar.dart';
import 'footer.dart';

void main() {
  runApp(const NewsPage());
}

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsState();
}

class _NewsState extends State<NewsPage> {
  final List<Map<String, String>> cardData = [
    {
      'image': 'images/berita/1.jpeg',
      'title': 'Rasakan serunya liburan di Air Terjun Bayang Sani',
      'date': '24 Mei 2024',
      'description': 'Air Terjun Bayang Sani di Pesisir Selatan menawarkan pemandangan yang menakjubkan dan kesegaran yang menyegarkan, mengundang para pelancong untuk menjelajahi keajaiban alam ini. Air Terjun Bayang Sani ini sering menjadi daya tarik utama bagi para wisatawan yang mengunjungi daerah tersebut. Lokasinya yang mudah dijangkau, baik dari pusat kota maupun dari pantai terdekat, membuatnya menjadi destinasi wisata yang populer bagi semua kalangan. Dengan keindahan alamnya yang menakjubkan, air terjun di pesisir selatan merupakan destinasi wisata yang tidak boleh dilewatkan bagi para pencinta alam dan petualang.',
      'location': 'Koto Berapak, Kabupaten Pesisir Selatan'
    },
    {
      'image': 'images/berita/2.jpg',
      'title': 'Yuk, cobain berkunjung ke Kebun Teh di Solok!',
      'date': '02 Juni 2024',
      'description': 'Kebun teh merupakan salah satu destinasi wisata yang menarik dan populer di Indonesia, tak terkecuali di Sumatera Barat, Pemandangan yang memukau, udara segar, dan kesempatan untuk belajar tentang teh membuat wisata kebun teh menjadi pilihan yang menarik untuk menghabiskan waktu liburan. Kebun Teh ini berada di Jorong Aia Batumbuak ,Nagari Batang Barus Kecamatan Gunung Talang. Kebuh teh Alahan Panjang menyuguhkan pemandangan yang hijau ranau, udaranya yang sejuk dan serunya lagi daerah ini jauh dari kemacetan. Di belakang kebun teh ini, terlihat juga pemandangan Gunung Talang yang berdiri dengan gagahnya. Bagi yang hobi berfoto, tempat ini sangat cocok anda kunjungi.',
      'location': 'Alahan Panjang, Kabupaten Solok'
    },
    {
      'image': 'images/berita/3.jpeg',
      'title': 'Jumlah kunjungan wisata di Bukittinggi menurun?',
      'date': '14 Juni 2024',
      'description': 'Pemkot Bukittinggi mencatat, jumlah pengunjung yang masuk ke objek wisata berbayar selama libur lebaran di kota itu menurun dibandingkan tahun sebelumnya, Sementara pada periode yang sama 2023 sebanyak 153.542 orang dengan PAD mencapai Rp3,3, miliar. Pemkot Bukittinggi mencatat, jumlah pengunjung yang masuk ke objek wisata berbayar selama libur lebaran di kota itu menurun dibandingkan tahun sebelumnya, yakni 100.218 orang dengan Pendapat Asli Daerah (PAD) yang dicapai Rp 2,2 miliar.',
      'location': 'Guguk Panjang, Kota Bukittinggi'
    },
    {
      'image': 'images/berita/4.jpeg',
      'title': 'Gunung Marapi Erupsi Kembali, Jaga Keselamatan!',
      'date': '26 Juni 2024',
      'description': 'BKSDA Sumbar mengumumkan menutup jalur pendakian yang berada di pengawasannya di momen pergantian tahun mendatang. Penutupan ini sampai waktu yang tidak ditentukan. Dilihat dalam akun Instagramnya, Selasa (19/12/2023) untuk mengantisipasi pendakian pada penghujung tahun dan awal tahun 2024, BKSDA Sumbar memutuskan untuk menutup 4 gunung alam yang berada di pengawasannya. Untuk mengantisipasi pendaki melakukan pendakian pada penghujung tahun 2023 dan awal tahun baru 2024, Balai KSDA Sumatera Barat mengeluarkan pengumuman penutupan gunung dalam pengelolaannya tidak hanya Gunung Marapi saja, namun juga Gunung Singgalang, Gunung Tandikek dan Gunung Sago sampai dengan waktu yang belum ditentukan, tulis BKSDA Sumbar dalam caption postingannya.',
      'location': 'Pasie Laweh, Kabupaten Tanah Datar'
    },
    {
      'image': 'images/berita/5.jpg',
      'title': 'Ingin merasakan kenyamanan mandi air panas? Disini aja!',
      'date': '04 Juli 2024',
      'description': 'Pemandian air panas adalah salah satu destinasi wisata yang populer di berbagai belahan dunia. Keindahan alam yang disajikan, dipadukan dengan manfaat kesehatan dari air panas alami. Lokasi wisata pemandian air panas menjadi pilihan banyak orang untuk bersantai dan meremajakan tubuh. Air panas biasanya berasal dari mata air alami yang mengandung mineral-mineral tertentu dan memiliki suhu yang lebih tinggi dari suhu udara sekitarnya Nah, tempat-tempat pemandian air panas di Sumatera Barat menawarkan pengalaman relaksasi yang unik bagi pengunjungnya. Pemandian Air Panas Padang Gantiang yang berlokasi di Jalan Walan di Koto Gadang, Hilir, Kecamatan Padang Ganting, Kabupaten Tanah Datar, Sumbar. Pemandian ini menawarkan kolam-kolam air panas alami yang menyegarkan dengan suasana yang tenang. Pemandian air panas Padang Gantiang merupakan salah satu tempat pemandian populer di Ranah Minang.',
      'location': 'Padang Ganting, Kabupaten Tanah Datar'
    },
    {
      'image': 'images/berita/6.jpg',
      'title': 'Keindahan Alam yang Memukau di Pantai Carocok',
      'date': '16 Juli 2024',
      'description': 'Sumatera Barat (Sumbar) dikenal sebagai salah satu provinsi di Indonesia dengan potensi pariwisata alam yang luar biasa. Tidak hanya berpusat di Padang sebagai Ibu Kota Sumbar, terdapat destinasi pariwisata favorit di wilayah kabupaten dan kota lainnya. Salah satunya adalah Pantai Carocok yang berada di Kecamatan IV Jurai, Kabupaten Pesisir Selatan. Pantai ini jadi wisata favorit masyarakat Kota Painan, pantai ini hanya berjarak 2 kilometer dari pusat Kota Painan. Pantai Carocok jadi salah satu wisata primadona yang memiliki hamparan pasir putih dengan perairan tenang dan bersih. Menariknya, hanya beberapa meter dari lepas pantai juga terdapat gugusan pulau karang yang dikenal dengan Pulau Batu Kereta.',
      'location': 'IV Jurai, Kabupaten Pesisir Selatan'
    },
    {
      'image': 'images/berita/7.jpg',
      'title': 'Menjelajahi Keindahan Alam Bukittinggi dan Jam Gadang yang Ikonik',
      'date': '28 Juli 2024',
      'description': 'Bukittinggi, Kota dengan perekonomian terbesar kedua di Sumbar ini berada pada ketinggian 909-941 mdpl. Ini menjadikan Bukittinggi kota berhawa dingin sejuk dengan suhu berkisar antara 16.1 hingga 24.9 derajat Celsius yang mana suhu ini cukup dingin bagi beberapa orang. Kota Terdingin di Sumatera Barat, merupakan julukan yang cocok untuk kota wisata ini karena suhunya yang sejuk sepanjang tahun. Dengan ketinggian lebih dari 900 meter di atas permukaan laut, suhu di Kota Bukittinggi biasanya berkisar antara 18 hingga 24 derajat Celsius di sepanjang tahun. Ini membuat Bukittinggi menjadi tempat yang sempurna untuk menghindari panasnya musim kemarau di Indonesia. Jadi detikers yang ingin kabur dari panasnya ibukota Jakarta lebih baik menjadikan Kota Bukittinggi sebagai salah satu tujuan.',
      'location': 'Guguk Panjang, Kota Bukittinggi'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWs(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Berita Terkini Sumatera Barat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cardData.length,
                itemBuilder: (context, index) {
                  final card = cardData[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewsScreen(
                            image: card['image']!,
                            title: card['title']!,
                            date: card['date']!,
                            location: card['location']!,
                            description: card['description']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            card['image']!,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  card['title']!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.newspaper),
                                    SizedBox(width: 4),
                                    Text(
                                      card['date']!,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                ExpandableText(
                                  card['description']!,
                                  expandText: 'Baca Selengkapnya',
                                  collapseText: 'Tutup',
                                  maxLines: 3,
                                  linkColor: Colors.green,
                                ),
                                SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Footer2(),
            ],
          ),
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
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Berita Wisata Sumbar',
        ),
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
            // Date
            Row(
              children: [
                Icon(Icons.newspaper),
                SizedBox(width: 4),
                Text(
                  date,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 8.0),
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
