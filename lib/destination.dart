// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// Koneksi ke Halaman
import 'appbar.dart';
import 'footer.dart';

void main() {
  runApp(const DestinationPage());
}

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationState();
}

class _DestinationState extends State<DestinationPage> {
  final List<Map<String, dynamic>> cardDestinationTop = [
    {
      'image': ['images/pantai_padang/1.jpg', 'images/pantai_padang/2.jpg', 'images/pantai_padang/3.jpg', 'images/pantai_padang/4.jpg'],
      'place': 'Pantai Padang',
      'detail':
          'Pantai Padang ini populer dengan sebutan Taplau (Tapi Lauik) yang berarti Tepi Laut. Pantai ini merupakan salah satu pantai yang sangat populer di Kota Padang dan sering dikunjungi oleh wisatawan.',
      'description':
          'Pantai Padang merupakan pantai yang terletak pada kawasan padat perkotaan di Kota Padang. Pantai ini cukup populer di kalangan masyarakat, karena selain letak pemandangan yang indah juga letaknya yang strategis di jantung Kota Padang. Hampir setiap hari, lokasi ini sangat ramai dikunjungi wisatawan. Akses yang mudah dan lokasi yang indah, membuat Pantai Padang atau Taplau ini selalu dipadati pengunjung yang ingin menyegarkan pikiran dari segala rutinitas sehari-hari.',
      'location': 'Purus, Kota Padang',
      'rating': 4.5
    },
    {
      'image': ['images/ngarai_sianok/1.jpeg', 'images/ngarai_sianok/2.png', 'images/ngarai_sianok/3.png', 'images/ngarai_sianok/4.jpg'],
      'place': 'Ngarai Sianok',
      'detail':
          'Ngarai yang dalam dan curam ini menyajikan pemandangan alam yang spektakuler. Anda bisa menikmati keindahan alam dari berbagai sudut pandang.',
      'description':
          'Ngarai Sianok berlokasi di perbatasan Kota Bukittinggi dengan Kabupaten Agam. Tidak kalah indah dibandingkan dengan pesona Lembah Harau, pesona dari Ngarai Sianok diibaratkan sebagai Grand Canyon-nya Bukittinggi. Ngarai Sianok ini memiliki panorama alam yang sangat indah, dan kamu juga bisa bermain air dan sekadar nongkrong bersama teman di bawah ngarai ini. Bila ingin menikmati pemandangan ngarai dari atas, kamu bisa masuk ke Taman Panorama dan menyaksikan keindahan Ngarai Sianok dari sini.',
      'location': 'IV Koto, Kabupaten Agam',
      'rating': 4.5
    },
    {
      'image': ['images/lembah_harau/1.jpg', 'images/lembah_harau/2.jpg', 'images/lembah_harau/3.jpg', 'images/lembah_harau/4.jpg'],
      'place': 'Lembah Harau',
      'detail':
          'Dikenal sebagai Grand Canyon-nya Sumatera Barat, Lembah Harau menyajikan pemandangan tebing curam yang dramatis dan lembah hijau yang subur.',
      'description':
          'Lembah Harau merupakan sebuah ngarai dekat Kota Payakumbuh di Kabupaten Limapuluh Koto, provinsi Sumatera Barat. Lembah Harau diapit dua bukit cadas terjal dengan ketinggian mencapai 150 meter berupa batu pasir yang terjal berwarna-warni, dengan ketinggian 100 sampai 500 meter. Lembah Harau merupakan lembah atau ngarai yang terbentuk dari patahan turun akibat peristiwa tektonik sehingga membentuk wilayah lembah yang diapit oleh dua dinding perbukitan dengan tebing yang curam.',
      'location': 'Tarantang, Kabupaten Limapuluh Kota',
      'rating': 4.5
    },
    {
      'image': ['images/danau_kembar/1.jpg', 'images/danau_kembar/2.jpg', 'images/danau_kembar/3.jpg', 'images/danau_kembar/4.jpg'],
      'place': 'Danau Kembar',
      'detail':
          'Terdiri dari dua danau yang berdampingan, Danau Kembar menawarkan keindahan alam yang unik dan suasana yang tenang.',
      'description':
          'Danau Kembar berlokasi di Kabupaten Solok memang sangat memanjakan mata. Sesuai dengan namanya, terdapat dua buah danau yang dikenal dengan sebutan Danau Atas dan Danau Bawah. Disebut Danau Kembar karena lokasi kedua danau ini hanya berjarak sekitar 300 meter, dan hanya terpisah oleh sebuah bukit saja. Uniknya untuk menuju Danau Diatas pengunjung harus menempuh jalan menurun, sedangkan untuk menuju Danau Dibawah pengunjung akan melewati jalan menanjak. Walau disebut Danau Kembar, nyatanya kedua danau di Solok tersebut memiliki bentuk, luas, dan kedalaman yang berbeda.',
      'location': 'Alahan Panjang, Kabupaten Solok',
      'rating': 4.5
    },
  ];

  final List<Map<String, dynamic>> cardDestination = [
    {
      'image': ['images/pantai_air_manis/1.jpg', 'images/pantai_air_manis/2.jpg', 'images/pantai_air_manis/3.jpg', 'images/pantai_air_manis/4.jpg'],
      'place': 'Pantai Air Manis',
      'detail':
          'Terkenal dengan legenda Malin Kundang dan ombak yang tenang, Pantai Air Manis menawarkan pemandangan pantai yang indah serta suasana yang santai.',
      'description':
          'Pantai Air Manis merupakan pantai yang terletak kurang lebih 10 km ke selatan dari pusat Kota Padang. Pantai ini merupakan salah satu tujuan wisata populer yang selalu ramai dikunjungi oleh masyarakat. Pantai ini dikenal dengan ombaknya yang kecil, memiliki panorama yang indah di sisi utaranya dan legenda Malin Kundang. Di ujung utara pantai ini terlihat gundukan Gunung Padang dari kejauhan. Di samping itu, terdapat dua pulau kecil yaitu Pulau Pisang Ketek dan Pulau Pisang Gadang yang berjarak tak seberapa jauh dari pantai ini.',
      'location': 'Air Manis, Kota Padang',
      'rating': 4.5
    },
    {
      'image': ['images/lembah_anai/1.jpg', 'images/lembah_anai/2.jpg', 'images/lembah_anai/3.jpg', 'images/lembah_anai/4.jpg'],
      'place': 'Lembah Anai',
      'detail':
          'Terletak di tepi jalan Padang-Bukittinggi, Lembah Anai memukau dengan air terjunnya yang tinggi dan hutan hujan tropis yang lebat.',
      'description':
          'Lembah Anai adalah sebuah air terjun yang terletak di jorong aie mancua nagari Singgalang, X Koto, Kabupaten Tanah Datar, Sumatera Barat. Air terjun setinggi sekira 35 meter ini berada tepat di tepi Jalan Raya Padang-Bukittinggi di kaki Gunung Singgalang. Air Terjun Lembah Anai merupakan bagian dari aliran Sungai Batang Lurah, anak Sungai Batang Anai yang berhulu di Gunung Singgalang di ketinggian 400 Mdpl. Air terjun ini terletak di batas barat kawasan Cagar Alam Lembah Anai sehingga suasana masih alami dengan hutan lebat serta pepohonan rimbun. Disekitar air terjun pun terdapat monyet yang berkeliaran. Pada saat liburan, air terjun ini dikunjungi oleh ratusan pengunjung. Keindahannya membuat Air Terjun Lembah Anai menjadi ikon pariwisata Provinsi Sumatera Barat.',
      'location': 'Singgalang, Kabupaten Tanah Datar',
      'rating': 4.5
    },
    {
      'image': ['images/puncak_lawang/1.jpg', 'images/puncak_lawang/2.jpg', 'images/puncak_lawang/3.jpg', 'images/puncak_lawang/4.jpg'],
      'place': 'Puncak Lawang',
      'detail':
          'Nikmati pemandangan Danau Maninjau yang menakjubkan dari ketinggian di Puncak Lawang. Udara sejuk dan panorama alam yang hijau membuat tempat ini sangat menenangkan.',
      'description':
          'Puncak Lawang adalah salah satu objek wisata alam yang terletak di dataran tinggi di Nagari Lawang, Kecamatan Matur, Kabupaten Agam, Sumatera Barat. Dengan keindahannya kita bisa melihat birunya alam Danau Maninjau, rindangnya pohon pinus dan udara yang sejuk. Keindahan danaunya kita dapat dilihat dari ketinggian 1.210 mdpl di puncak tertingginya Nagari Lawang Sehingga Puncak Lawang dijadikannya negeri di atas awan yang indah, berlatar belakang Danau Maninjau.',
      'location': 'Matur, Kabupaten Agam',
      'rating': 4.0
    },
    {
      'image': ['images/pantai_gandoriah/1.jpg', 'images/pantai_gandoriah/2.jpg', 'images/pantai_gandoriah/3.jpg', 'images/pantai_gandoriah/4.jpg'],
      'place': 'Pantai Gandoriah',
      'detail':
          'Pantai ini memiliki kisah legenda yang menarik dan menawarkan keindahan pantai dengan pasir putih serta pemandangan pulau-pulau kecil di kejauhan.',
      'description':
          'Pantai Gandoriah adalah sebuah objek wisata pantai yang terletak di Kota Pariaman, yaitu sebuah kota yang terletak sekitar 56 kilometer dari Kota Padang, Sumatera Barat. Pantai ini tak hanya unik dari sejarah namanya saja yang konon terinspirasi dari nama seorang gadis Minang yang cintanya kandas dengan kekasihnya yang tak lain adalah sepersusuan. Keunikan lain juga datang dari daya tarik wisatanya yang mempesona. Misal view pantainya dan juga pemandangan enam gugusan pulau cantik yang bisa Anda lihat dari kejauhan.',
      'location': 'Pasir, Kota Pariaman',
      'rating': 4.5
    },
    {
      'image': ['images/lembah_harau/1.jpg', 'images/lembah_harau/2.jpg', 'images/lembah_harau/3.jpg', 'images/lembah_harau/4.jpg'],
      'place': 'Lembah Harau',
      'detail':
          'Dikenal sebagai Grand Canyon-nya Sumatera Barat, Lembah Harau menyajikan pemandangan tebing curam yang dramatis dan lembah hijau yang subur.',
      'description':
          'Lembah Harau merupakan sebuah ngarai dekat Kota Payakumbuh di Kabupaten Limapuluh Koto, provinsi Sumatera Barat. Lembah Harau diapit dua bukit cadas terjal dengan ketinggian mencapai 150 meter berupa batu pasir yang terjal berwarna-warni, dengan ketinggian 100 sampai 500 meter. Lembah Harau merupakan lembah atau ngarai yang terbentuk dari patahan turun akibat peristiwa tektonik sehingga membentuk wilayah lembah yang diapit oleh dua dinding perbukitan dengan tebing yang curam.',
      'location': 'Tarantang, Kabupaten Limapuluh Kota',
      'rating': 4.5
    },
    {
      'image': ['images/danau_kembar/1.jpg', 'images/danau_kembar/2.jpg', 'images/danau_kembar/3.jpg', 'images/danau_kembar/4.jpg'],
      'place': 'Danau Kembar',
      'detail':
          'Terdiri dari dua danau yang berdampingan, Danau Kembar menawarkan keindahan alam yang unik dan suasana yang tenang.',
      'description':
          'Danau Kembar berlokasi di Kabupaten Solok memang sangat memanjakan mata. Sesuai dengan namanya, terdapat dua buah danau yang dikenal dengan sebutan Danau Atas dan Danau Bawah. Disebut Danau Kembar karena lokasi kedua danau ini hanya berjarak sekitar 300 meter, dan hanya terpisah oleh sebuah bukit saja. Uniknya untuk menuju Danau Diatas pengunjung harus menempuh jalan menurun, sedangkan untuk menuju Danau Dibawah pengunjung akan melewati jalan menanjak. Walau disebut Danau Kembar, nyatanya kedua danau di Solok tersebut memiliki bentuk, luas, dan kedalaman yang berbeda.',
      'location': 'Alahan Panjang, Kabupaten Solok',
      'rating': 4.5
    },
    {
      'image': ['images/ngarai_sianok/1.jpeg', 'images/ngarai_sianok/2.png', 'images/ngarai_sianok/3.png', 'images/ngarai_sianok/4.jpg'],
      'place': 'Ngarai Sianok',
      'detail':
          'Ngarai yang dalam dan curam ini menyajikan pemandangan alam yang spektakuler. Anda bisa menikmati keindahan alam dari berbagai sudut pandang.',
      'description':
          'Ngarai Sianok berlokasi di perbatasan Kota Bukittinggi dengan Kabupaten Agam. Tidak kalah indah dibandingkan dengan pesona Lembah Harau, pesona dari Ngarai Sianok diibaratkan sebagai Grand Canyon-nya Bukittinggi. Ngarai Sianok ini memiliki panorama alam yang sangat indah, dan kamu juga bisa bermain air dan sekadar nongkrong bersama teman di bawah ngarai ini. Bila ingin menikmati pemandangan ngarai dari atas, kamu bisa masuk ke Taman Panorama dan menyaksikan keindahan Ngarai Sianok dari sini.',
      'location': 'IV Koto, Kabupaten Agam',
      'rating': 4.0
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWs(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Temukan Destinasi yang Ingin Anda Kunjungi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerLeft, 
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Row(
                          children: [
                            Icon(Icons.whatshot_outlined, color: Colors.red),
                            SizedBox(width: 4),
                            Text(
                              "Destinasi Unggulan",
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: cardDestinationTop.map((card) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DestinationScreen(
                                  image: card['image']!,
                                  place: card['place']!,
                                  detail: card['detail']!,
                                  description: card['description']!,
                                  location: card['location']!,
                                  rating: card['rating']!,
                                ),
                              ),
                            );
                          },
                          child: DestinationCard(
                            image: card['image']!,
                            place: card['place']!, 
                            rating: card['rating']!,
                            detail: card['detail']!,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    alignment: Alignment.centerLeft, 
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, color: Colors.green),
                            SizedBox(width: 4),
                            Text(
                              "Destinasi Tersedia",
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: cardDestination.map((card) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DestinationScreen(
                                  image: card['image']!,
                                  place: card['place']!,
                                  detail: card['detail']!,
                                  description: card['description']!,
                                  location: card['location']!,
                                  rating: card['rating']!,
                                ),
                              ),
                            );
                          },
                          child: DestinationCard(
                            image: card['image']!,
                            place: card['place']!, 
                            rating: card['rating']!,
                            detail: card['detail']!,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const Footer2(),
          ],
        ),      
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final List<String> image;
  final String place;
  final String detail;
  final double rating;

  const DestinationCard({
    super.key,
    required this.image,
    required this.place,
    required this.detail,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Image.asset(
                image[0],
                fit: BoxFit.cover,
                width: 300,
                height: 200,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(16.0),  // Tambahkan padding di sini
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 15.0, 
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    detail,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15.0, 
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  final List<String> image;
  final String place;
  final String detail;
  final String description;
  final String location;
  final double rating;

  const DestinationScreen({
    super.key,
    required this.image,
    required this.place,
    required this.detail,
    required this.description,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place),
        backgroundColor: const Color.fromARGB(255, 140, 129, 95),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 250,
              child: PageView(
                children: image.map((img) {
                  return Image.asset(
                    img,
                    fit: BoxFit.cover,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    place,
                    style: const TextStyle(
                      fontSize: 24, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue),
                      SizedBox(width: 4),
                      Text(
                        location,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 4),
                      Text(
                        rating.toString(),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    detail,
                    style: const TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Informasi',
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
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
                          fontWeight: FontWeight.bold
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
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10), // Padding for the button
                          backgroundColor: Colors.yellow // Background color
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/reservasi');
                        },
                        child: const Text(
                          'Reservasi Sekarang',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const FooterWs(),
          ],
        ),
      ),
    );
  }
}