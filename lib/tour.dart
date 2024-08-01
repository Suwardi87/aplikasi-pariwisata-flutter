// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// Koneksi ke Halaman
import 'appbar.dart';
import 'footer.dart';

void main() {
  runApp(const TourPage());
}

class TourPage extends StatefulWidget {
  const TourPage({super.key});

  @override
  State<TourPage> createState() => _TourState();
}

class _TourState extends State<TourPage> {
  final List<Map<String, String>> cardData = [
    {
      'image': 'images/promosi.jpg',
      'title': 'Paket Promo Tour Sumbar',
      'duration': 'Selama yang Anda Inginkan',
      'detail': 'Dengan Paket Promo Tour Sumbar, Anda dapat mengunjungi berbagai kota menarik di Sumatera Barat. Sesuaikan rencana perjalanan Anda sendiri dan nikmati liburan yang sesuai dengan keinginan Anda.',
      'description': 'Nikmati kebebasan penuh dalam merencanakan liburan impian Anda dengan Paket Promo Tour Sumbar. Paket ini dirancang khusus untuk memberikan fleksibilitas maksimal kepada Anda. Jelajahi keindahan Sumatera Barat dengan mengunjungi kota-kota favorit seperti Bukittinggi, dengan ikon Jam Gadangnya yang megah, dan Padang, yang terkenal dengan kuliner lezatnya. Atau nikmati ketenangan di Kabupaten Agam dengan Danau Maninjau yang menakjubkan dan jelajahi lebih banyak destinasi menawan di wilayah ini. Anda memiliki kebebasan untuk merancang sendiri rute perjalanan Anda, memastikan setiap momen sesuai dengan keinginan dan minat Anda. Apakah Anda ingin menjelajahi pantai, gunung, atau situs budaya, pilihan ada di tangan Anda. Dengan paket ini, Anda dapat menciptakan kenangan yang tak terlupakan, sesuai dengan impian liburan Anda.'
    },
    {
      'image': 'images/paket_wisata/agam.jpg',
      'title': 'Paket Wisata Agam',
      'duration': '3 Hari 2 Malam',
      'detail': 'Nikmati keindahan alam danau Maninjau dan pemandangan alam lainnya di Kabupaten Agam.',
      'description': 'Dalam paket wisata selama 3 hari dan 2 malam ini, Anda akan menikmati keindahan alam yang memukau di Kabupaten Agam. Salah satu sorotan utama adalah Danau Maninjau, sebuah danau kawah yang indah dikelilingi oleh perbukitan hijau. Anda akan merasakan ketenangan danau, serta menikmati pemandangan spektakuler yang menenangkan jiwa. Selain itu, Anda juga akan mengunjungi berbagai tempat wisata alam lainnya di Agam yang menawarkan keindahan yang tak kalah menakjubkan. Rasakan ketenangan dan keindahan alam yang hanya bisa ditemukan di Agam.'
    },
    {
      'image': 'images/paket_wisata/bukittinggi.jpg',
      'title': 'Paket Wisata Bukittinggi',
      'duration': '3 Hari 2 Malam',
      'detail': 'Nikmati keindahan alam dan budaya Bukittinggi, termasuk kunjungan ke Jam Gadang, Bukit Panorama, dan banyak lagi.',
      'description': 'Selama 4 hari dan 3 malam, Anda akan menikmati perjalanan yang penuh dengan keindahan alam dan kekayaan budaya di Bukittinggi. Kunjungi Jam Gadang, ikon kota yang megah dengan sejarah yang kaya. Anda juga akan menikmati pemandangan dari Bukit Panorama yang menakjubkan, memberikan pemandangan indah Kota Bukittinggi dan sekitarnya. Selain itu, berbagai objek wisata budaya dan alam lainnya akan melengkapi perjalanan Anda, menjadikan pengalaman ini penuh warna dan tak terlupakan.'
    },
    {
      'image': 'images/paket_wisata/dharmasraya.jpg',
      'title': 'Paket Wisata Dharmasraya',
      'duration': '3 Hari 2 Malam',
      'detail': 'Keindahan alam dan budaya Dharmasraya dengan kunjungan ke Candi Padang Roco dan objek wisata lainnya.',
      'description': 'Nikmati petualangan selama 3 hari dan 2 malam di Dharmasraya, di mana Anda akan mengeksplorasi kekayaan alam dan budaya yang luar biasa. Kunjungi Candi Padang Roco, situs bersejarah yang penuh dengan misteri dan keindahan arkeologi. Selain itu, Anda juga akan menjelajahi berbagai objek wisata alam yang menawan, memberikan Anda pengalaman yang mendalam tentang keindahan dan warisan budaya Dharmasraya. Setiap langkah dalam perjalanan ini akan membawa Anda lebih dekat dengan sejarah dan keindahan alami daerah ini.'
    },
    {
      'image': 'images/paket_wisata/mentawai.jpg',
      'title': 'Paket Wisata Mentawai',
      'duration': '5 Hari 4 Malam',
      'detail': 'Petualangan seru di Kepulauan Mentawai dengan aktivitas selancar, snorkeling, dan eksplorasi budaya lokal.',
      'description': 'Selama 5 hari dan 4 malam, rasakan petualangan seru di Kepulauan Mentawai. Paket wisata ini dirancang untuk pecinta alam dan petualangan. Anda akan menikmati aktivitas selancar di ombak yang menantang, snorkeling di perairan yang jernih, serta eksplorasi budaya lokal yang kaya. Temui masyarakat Mentawai dan pelajari tradisi serta kehidupan sehari-hari mereka. Dengan kombinasi aktivitas laut dan pengalaman budaya, perjalanan ini akan memberikan Anda kenangan yang luar biasa dan petualangan yang tak terlupakan.'
    },
    {
      'image': 'images/paket_wisata/padang.jpg',
      'title': 'Paket Wisata Padang',
      'duration' : '4 Hari 3 Malam',
      'detail': 'Jelajahi pesona Kota Padang dengan paket wisata yang mencakup Pantai Air Manis, Jembatan Siti Nurbaya, dan wisata kuliner khas Padang.',
      'description': 'Nikmati keindahan Kota Padang dengan paket wisata selama 4 Hari 3 Malam. Paket ini mencakup kunjungan ke Pantai Air Manis, tempat legendaris dengan cerita Malin Kundang. Anda juga akan mengunjungi Jembatan Siti Nurbaya, spot ikonik yang menawarkan pemandangan malam yang menakjubkan. Selain itu, rasakan kelezatan kuliner khas Padang dengan berbagai hidangan lokal yang memanjakan lidah.',
    },
    {
      'image': 'images/paket_wisata/padang_panjang.jpg',
      'title': 'Paket Wisata Padang Panjang',
      'duration': '3 Hari 2 Malam',
      'detail': 'Jelajahi pesona Kota Padang Panjang dengan kunjungan ke Minangkabau Village, Air Terjun Lembah Anai, Pasar Kuliner Padang Panjang, dan objek wisata lainnya.',
      'description': 'Selama 3 hari dan 2 malam, Anda akan dibawa untuk menjelajahi keindahan Kota Padang Panjang. Paket ini mencakup kunjungan ke Minangkabau Village di mana Anda dapat menyaksikan kekayaan budaya Minangkabau yang autentik. Anda juga akan menikmati keindahan alam Air Terjun Lembah Anai yang menakjubkan, serta mencicipi berbagai hidangan lezat di Pasar Kuliner Padang Panjang. Selain itu, ada berbagai objek wisata lainnya yang akan melengkapi perjalanan Anda, menjadikannya pengalaman yang tak terlupakan.'
    },
    {
      'image': 'images/paket_wisata/pariaman.jpg',
      'title': 'Paket Wisata Pariaman',
      'duration': '3 Hari 2 Malam',
      'detail': 'Temukan keindahan alam dan pantai di Pariaman dengan paket wisata yang mencakup Pantai Gandoriah, Pulau Angso Duo, dan objek wisata lainnya.',
      'description': 'Nikmati 3 hari dan 2 malam penuh petualangan di Pariaman. Dalam paket ini, Anda akan mengunjungi Pantai Gandoriah yang terkenal dengan pasir putihnya yang lembut dan ombak yang tenang. Perjalanan juga akan membawa Anda ke Pulau Angso Duo, sebuah pulau kecil yang eksotis dan ideal untuk bersantai atau snorkeling. Selain itu, Anda akan diajak menjelajahi berbagai objek wisata menarik lainnya di Pariaman, memastikan Anda mendapatkan pengalaman liburan yang memuaskan dan penuh kenangan.'
    },
    {
      'image': 'images/paket_wisata/pasaman.png',
      'title': 'Paket Wisata Pasaman',
      'duration': '4 Hari 3 Malam',
      'detail': 'Jelajahi pesona alam dan budaya Pasaman dan Pasaman Barat dengan kunjungan ke Gunung Talamau, Pantai Sasak dan objek wisata lainnya.',
      'description': 'Selama 4 hari dan 3 malam, Anda akan dibawa menjelajahi kekayaan alam dan budaya di Pasaman dan Pasaman Barat. Paket ini mencakup petualangan ke Gunung Talamau, yang menawarkan pemandangan spektakuler dan udara segar pegunungan. Anda juga akan menikmati keindahan Pantai Sasak dengan pasir hitamnya yang unik. Selain itu, berbagai objek wisata menarik lainnya akan melengkapi perjalanan Anda, memberikan pengalaman liburan yang beragam dan mendalam.'
    },
    {
      'image': 'images/paket_wisata/payakumbuh.jpg',
      'title': 'Paket Wisata Payakumbuh',
      'duration': '3 Hari 2 Malam',
      'detail': 'Nikmati keindahan alam dan budaya Payakumbuh dan Limapuluh Kota dengan kunjungan ke Lembah Harau, Kelok 9, Puncak Marajo dan objek wisata lainnya.',
      'description': 'Dalam perjalanan 3 hari dan 2 malam ini, Anda akan menikmati keindahan alam dan kekayaan budaya Payakumbuh dan Limapuluh Kota. Kunjungan ke Lembah Harau yang menakjubkan akan memberikan Anda pemandangan tebing batu yang spektakuler. Anda juga akan melintasi Kelok 9, jembatan berliku yang menjadi ikon daerah ini, serta menikmati pemandangan dari Puncak Marajo. Berbagai objek wisata lainnya akan melengkapi perjalanan Anda, menjadikannya pengalaman yang mempesona dan penuh inspirasi.'
    },
    {
      'image': 'images/paket_wisata/pesisir_selatan.jpg',
      'title': 'Paket Wisata Pesisir Selatan',
      'duration': '4 Hari 3 Malam',
      'detail': 'Nikmati keindahan pantai dan laut di Pesisir Selatan dengan kunjungan ke Pantai Carocok dan pulau-pulau kecil di sekitarnya.',
      'description': 'Nikmati 4 hari dan 3 malam yang penuh keindahan di Pesisir Selatan. Anda akan diajak menikmati pasir putih dan air jernih di Pantai Carocok, tempat yang sempurna untuk bersantai dan menikmati suasana pantai. Selain itu, perjalanan ini juga mencakup kunjungan ke pulau-pulau kecil di sekitarnya, yang menawarkan keindahan alami yang memukau dan kesempatan untuk snorkeling atau sekadar berjemur di bawah sinar matahari. Dengan berbagai aktivitas yang menarik, paket ini akan memberikan Anda liburan yang tak terlupakan.'
    },
    {
      'image': 'images/paket_wisata/sawahlunto.jpg',
      'title': 'Paket Wisata Sawahlunto',
      'duration': '2 Hari 1 Malam',
      'detail': 'Eksplorasi sejarah tambang batubara dan keindahan alam Sawahlunto dengan berbagai kegiatan menarik.',
      'description': 'Selama 2 hari dan 1 malam, Anda akan mengeksplorasi sejarah dan keindahan alam di Sawahlunto. Paket ini mencakup kunjungan ke museum dan situs-situs bersejarah tambang batubara, memberikan wawasan mendalam tentang masa lalu industri daerah ini. Selain itu, Anda akan menikmati pemandangan alam yang menakjubkan, serta berbagai kegiatan menarik lainnya yang akan membuat perjalanan Anda menjadi lebih berkesan.'
    },
    {
      'image': 'images/paket_wisata/sijunjung.jpg',
      'title': 'Paket Wisata Sijunjung',
      'duration': '3 Hari 2 Malam',
      'detail': 'Jelajahi keindahan alam dan budaya Sijunjung dengan kunjungan ke Geopark Silokek dan objek wisata lainnya.',
      'description': 'Selama 3 hari dan 2 malam, Anda akan menjelajahi keindahan alam dan kekayaan budaya Sijunjung. Perjalanan ini mencakup kunjungan ke Geopark Silokek, yang menawarkan pemandangan alam yang luar biasa dan formasi geologi yang unik. Anda juga akan menikmati berbagai objek wisata lainnya yang memperkaya pengalaman Anda, menjadikan perjalanan ini tidak hanya menyenangkan tetapi juga edukatif.'
    },
    {
      'image': 'images/paket_wisata/solok.jpg',
      'title': 'Paket Wisata Solok',
      'duration': '4 Hari 3 Malam',
      'detail': 'Eksplorasi keindahan alam Solok dan Solok Selatan dengan kunjungan ke Danau Singkarak, Kebun Teh Alahan Panjang, dan pengalaman budaya lokal.',
      'description': 'Nikmati 4 hari dan 3 malam menjelajahi keindahan alam Solok dan Solok Selatan. Kunjungan ke Danau Singkarak akan memberikan Anda pemandangan yang menakjubkan dan suasana yang tenang. Anda juga akan mengunjungi Kebun Teh Alahan Panjang, di mana Anda dapat menyaksikan proses pembuatan teh dan menikmati pemandangan hijau yang luas. Selain itu, pengalaman budaya lokal akan memperkaya perjalanan Anda, menjadikannya liburan yang mendalam dan memuaskan.'
    },
    {
      'image': 'images/paket_wisata/tanah_datar.jpg',
      'title': 'Paket Wisata Tanah Datar',
      'duration': '3 Hari 2 Malam',
      'detail': 'Eksplorasi keindahan alam dan budaya Tanah Datar dengan kunjungan ke Istano Basa Pagaruyung dan objek wisata lainnya.',
      'description': 'Selama 3 hari dan 2 malam, Anda akan mengeksplorasi keindahan alam dan budaya Tanah Datar. Paket ini mencakup kunjungan ke Istano Basa Pagaruyung, sebuah istana megah yang penuh dengan sejarah dan arsitektur yang memukau. Selain itu, berbagai objek wisata lainnya akan melengkapi perjalanan Anda, memberikan wawasan yang mendalam tentang kekayaan budaya dan alam daerah ini. Nikmati setiap momen dan buat kenangan yang tak terlupakan di Tanah Datar.'
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
                    "Temukan Paket Wisata yang Anda Inginkan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cardData.length,
                    itemBuilder: (context, index) {
                      final card = cardData[index];
                      return TourCard(
                        image: card['image']!,
                        title: card['title']!,
                        duration: card['duration']!,
                        detail: card['detail']!,
                        onButtonPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => TourScreen(
                                image: card['image']!,
                                title: card['title']!,
                                duration: card['duration']!,
                                description: card['description']!,
                              ),
                            ),
                          );
                        },
                      );
                    },
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


class TourCard extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String detail;
  final VoidCallback onButtonPressed;

  const TourCard({
    super.key,
    required this.image,
    required this.title,
    required this.duration,
    required this.detail, 
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  duration,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 8),
                Text(
                  detail,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: onButtonPressed,
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

class TourScreen extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String description;

  const TourScreen({
    super.key,
    required this.image,
    required this.title,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    duration,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 20),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Destinasi Tujuan',
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
                              leading: Icon(Icons.location_on),
                              title: Text('Destinasi 1'),
                            ),
                            ListTile(
                              leading: Icon(Icons.location_on),
                              title: Text('Destinasi 2'),
                            ),
                            ListTile(
                              leading: Icon(Icons.location_on),
                              title: Text('Destinasi 3'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          'Harga Paket',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const <Widget>[
                            ListTile(
                              leading: Icon(Icons.monetization_on),
                              title: Text('Harga Anak-Anak: Rp.5000'),
                            ),
                            ListTile(
                              leading: Icon(Icons.monetization_on),
                              title: Text('Harga Dewasa: Rp.10000'),
                            ),
                            ListTile(
                              leading: Icon(Icons.monetization_on),
                              title: Text('Paket Keluarga: Rp.25000'),
                            ),
                            ListTile(
                              leading: Icon(Icons.monetization_on),
                              title: Text(
                                  'Harga Spesial Weekend: Rp.15000'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            backgroundColor: Colors.yellow,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/pesan');
                          },
                          child: const Text(
                            'Pesan Sekarang',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const FooterWs(),
          ],
        ),
      ),
    );
  }
}