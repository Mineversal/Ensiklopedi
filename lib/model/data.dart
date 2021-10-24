class Data {
  String name;
  String description;
  String imageAsset;
  String category;
  String type;
  String location;

  //static List<Data> allData = [];

  Data({
    required this.name,
    required this.imageAsset,
    required this.description,
    required this.category,
    required this.type,
    required this.location,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json['name'],
        description: json['description'],
        imageAsset: json['imageAsset'],
        category: json['category'],
        type: json['type'],
        location: json['location'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'imageAsset': imageAsset,
        'category': category,
        'type': type,
        'location': location,
      };
}

// ignore: non_constant_identifier_names
var dataList = [
  Data(
    name: 'Neowise',
    location: 'Bumi',
    description:
        'Komet C/2020 F3 (NEOWISE), atau Komet NEOWISE, adalah sebuah komet retrograde dengan orbit berbentuk mendekati parabola yang ditemukan pada 27 Maret 2020 oleh teleskop antariksa NEOWISE.[1][3] Komet ini mencapai titik terdekatnya dari Matahari pada 3 Juli 2020. Pada bulan Juli 2020, komet ini mencapai magnitudo +1 sehingga cukup mudah untuk diamati menggunakan mata telanjang oleh pengamat langit di belahan Bumi utara.[4][5] Komet ini juga teramati memiliki dua ekor, satu tersusun atas gas sementara ekor lainnya tersusun atas debu.',
    category: 'Antariksa',
    type: 'Komet',
    imageAsset: 'assets/images/profilebg.jpg',
  ),
  Data(
    name: 'Bima Sakti',
    location: 'Bumi',
    description:
        'Bima Sakti (bentuk yang sering digunakan oleh ahli astronomi) atau Bimasakti (bentuk baku menurut KBBI ) adalah galaksi spiral yang besar, yang di dalamnya terdapat Tata Surya, tempat planet Bumi beredar mengelilingi matahari. Matahari hanya salah satu dari sekitar 200 miliar  sampai 400 miliar bintang  yang membentuk galaksi Bima Sakti. Galaksi ini termasuk dalam tipe Hubble SBbc dengan total massa sekitar satu triliun kali massa matahari serta memiliki diameter 100.000 tahun cahaya dan ketebalan 1.000 tahun cahaya.',
    category: 'Antariksa',
    type: 'Galaksi',
    imageAsset: 'assets/images/bimasakti.jpg',
  ),
  Data(
    name: 'Gunung Bromo',
    location: 'Indonesia',
    description:
        'Gunung Bromo (dari bahasa Sanskerta: Brahma, salah seorang Dewa Utama dalam agama Hindu) atau dalam bahasa Tengger dieja "Brama", adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.',
    category: 'Alam',
    type: 'Gunung',
    imageAsset: 'assets/images/bromo.jpg',
  ),
  Data(
    name: 'Jepang',
    location: 'Asia',
    description:
        'Jepang (Jepang: 日本 Nippon atau Nihon; nama resmi: 日本国 Tentang suara ini Nipponkoku atau Nihonkoku, nama harfiah: "Negara Jepang") adalah sebuah negara kepulauan di Asia Timur. Letaknya di ujung barat Samudra Pasifik, di sebelah timur Laut Jepang, dan bertetangga dengan Republik Rakyat Tiongkok, Korea Selatan, dan Rusia. Pulau-pulau paling utara berada di Laut Okhotsk, dan wilayah paling selatan berupa kelompok pulau-pulau kecil di Laut Tiongkok Timur, tepatnya di sebelah selatan Okinawa yang bertetangga dengan Taiwan (Republik Tiongkok).',
    category: 'Negara',
    type: 'Negara Maju',
    imageAsset: 'assets/images/jepang.jpg',
  ),
  Data(
    name: 'Andromeda',
    location: 'Angkasa',
    description:
        'Galaksi Andromeda (nama lain, Messier 31 dan NGC 224) adalah sebuah galaksi spiral yang berjarak kira-kira 2,5 juta tahun cahaya dari bumi. Galaksi ini merupakan salah satu galaksi di luar galaksi Bima Sakti yang dapat dilihat dengan mata telanjang pada malam yang cerah, tanpa bulan, dan tanpa polusi cahaya.',
    category: 'Antariksa',
    type: 'Galaksi',
    imageAsset: 'assets/images/andromeda.jpg',
  ),
  Data(
    name: 'Indonesia',
    location: 'Asia',
    description:
        'Indonesia, disebut juga dengan Negara Kesatuan Republik Indonesia (NKRI, pengucapan bahasa Indonesia: [nəˈɡara kəsaˈt̪ua̯n reˈpublɪk in.ˈdo.nɛ.sja]); atau hanya Republik Indonesia (RI) adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia. Indonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau. Nama alternatif yang biasa dipakai adalah Nusantara.  Dengan populasi mencapai 270.203.917 jiwa pada tahun 2020, Indonesia menjadi negara berpenduduk terbesar keempat di dunia dan negara berpenduduk Muslim terbesar di dunia, dengan penganut lebih dari 230 juta jiwa.',
    category: 'Negara',
    type: 'Negara Berkembang',
    imageAsset: 'assets/images/indonesia.jpg',
  ),
  Data(
    name: 'Jakarta',
    location: 'Indonesia',
    description:
        'Jakarta (pengucapan bahasa Indonesia: [dʒaˈkarta] ( simak)), atau secara resmi bernama Daerah Khusus Ibukota Jakarta (disingkat DKI Jakarta) adalah ibu kota negara dan kota terbesar di Indonesia. Jakarta merupakan satu-satunya kota di Indonesia yang memiliki status setingkat provinsi. Jakarta terletak di pesisir bagian barat laut Pulau Jawa. Dahulu pernah dikenal dengan beberapa nama di antaranya Sunda Kelapa, Jayakarta, dan Batavia. Di dunia internasional Jakarta juga mempunyai julukan J-Town,  atau lebih populer lagi The Big Durian karena dianggap kota yang sebanding New York City (Big Apple) di Indonesia.',
    category: 'Kota',
    type: 'Ibukota',
    imageAsset: 'assets/images/jakarta.jpg',
  ),
  Data(
    name: 'Muhammad',
    location: 'Arab',
    description:
        'Muhammad (bahasa Arab: محمد‎; lahir di Mekkah, 570 – meninggal di Madinah, 8 Juni 632)  adalah seorang nabi dan rasul terakhir bagi umat Muslim.  Muhammad memulai penyebaran ajaran Islam untuk seluruh umat manusia dan mewariskan pemerintahan tunggal Islam. Muhammad sama-sama menegakkan ajaran tauhid untuk mengesakan Allah sebagaimana yang dibawa nabi dan rasul sebelumnya.',
    category: 'Tokoh',
    type: 'Rasul',
    imageAsset: 'assets/images/muhammad.jpg',
  ),
  Data(
    name: 'Al Khwarizmi',
    location: 'Uzbekistan',
    description:
        'Muḥammad bin Mūsā al-Khawārizmī (bahasa Arab: محمد بن موسى الخوارزمي‎) adalah seorang ahli dalam bidang matematika, astronomi, astrologi, dan geografi yang berasal dari Persia. Lahir sekitar tahun 780 di Khwārizm (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Baghdad. Hampir sepanjang hidupnya, ia bekerja sebagai dosen di Sekolah Kehormatan di Baghdad yang didirikan oleh Khalifah Bani Abbasiyah Al-Ma\'mun, tempat ia belajar ilmu alam dan matematik, termasuk mempelajari terjemahan manuskrip Sanskerta dan Yunani',
    category: 'Tokoh',
    type: 'Ilmuwan',
    imageAsset: 'assets/images/alkhwarizmi.jpg',
  ),
  Data(
    name: 'Tokyo',
    location: 'Jepang',
    description:
        'Tokyo (東京 Tōkyō, bahasa Jepang: [toːkʲoː] ( simak); lit. "Ibu kota Timur"), nama resminya Metropolis Tokyo (東京都 Tōkyō-to), adalah salah satu dari 47 prefektur Jepang yang menjadi ibu kota Jepang sejak 1869. Hingga 2018, Tokyo Raya menempati peringkat pertama sebagai wilayah metropolitan terpadat di dunia. Tokyo menjadi tempat bertahtanya Kaisar Jepang, pemerintah Jepang, dan Parlemen Jepang. Tokyo mencakup sebagian dari wilayah Kanto, Kepulauan Izu, dan Kepulauan Ogasawara. Tokyo dulunya bernama Edo ketika Shōgun Tokugawa Ieyasu menjadikan kota ini sebagai markas besarnya pada 1603. Kota ini berganti nama menjadi Tokyo setelah Kaisar Meiji menjadikannya sebagai ibu kota dan memindahkan tahtanya dari Kyoto pada tahun 1868. Metropolis Tokyo dibentuk pada tahun 1943 dari penggabungan bekas Prefektur Tokyo (東京府 Tōkyō-fu) dan Kota Tokyo (東京市 Tōkyō-shi). Tokyo sering kali disebut sebagai sebuah kota, padahal secara resmi Tokyo merupakan sebuah "prefektur metropolitan" yang sangat berbeda dari kota biasa dan menggabungkan unsur-unsur kota dan prefektur.',
    category: 'Kota',
    type: 'Ibukota',
    imageAsset: 'assets/images/tokyo.jpg',
  ),
];
