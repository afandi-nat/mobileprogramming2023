class TourismPlace {
  String name;
  String goal;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.goal,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Alun Eropa',
    goal: 'Spot Selfie',
    description:
        'Berkonsep arsitektur Eropa, dengan nuansa warna-warni seperti Venetia, Maroko, Mykonos, dan French Village membuat seakan berada di kota-kota indah khas eropa. Berfoto ria bersama, menikmati mendayung di sungai atau bersantai menaiki tram dan kereta api yang antik di Alun Eropa akan menjadi momen tak terlupakan.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 17:00',
    ticketPrice: 'Rp 20.000',
    imageAsset: 'images/alun_eropa.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/alun_eropa1.jpg',
      'https://afandistudio.net/dusun_semilir/alun_eropa2.jpg',
      'https://afandistudio.net/dusun_semilir/alun_eropa3.jpg'
    ],
  ),
  TourismPlace(
    name: 'Jembatan Senggol',
    goal: 'Spot Selfie',
    description:
        'Jembatan yang di bangun menggantung diatas taman, bergaya dusun dengan banyak spot foto dan tempat bersantai, menikmati suasana pedesaan dan semilir angin gunung. Suasana yang asri para pengunjung juga akan dimanjakan dengan berbagai fasilitas yang ada plus Spot Foto yang Instagramable banget.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 20:00',
    ticketPrice: 'Free',
    imageAsset: 'images/jembatan_senggol.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/jembatan_senggol1.jpg',
      'https://afandistudio.net/dusun_semilir/jembatan_senggol2.jpg',
      'https://afandistudio.net/dusun_semilir/jembatan_senggol3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Alas Tirta',
    goal: 'Spot Selfie',
    description:
        'Spot foto berkonsep alam, dengan bermacam macam tanaman hutan Tropis yang menjadi latar belakang dan beberapa hewan menarik seperti Otter, Burung, & Ikan Koi. Taman yang instagramable, banyak spot foto, patung- patung dan kolam yang indah, rumah bagi otter , angsa dan ikan. Nikmati suasana alam yang segar dan sejuknya udara asli di Dusun Semilir.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 20:00',
    ticketPrice: 'Free',
    imageAsset: 'images/alas_tirta.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/alas_tirta1.jpg',
      'https://afandistudio.net/dusun_semilir/alas_tirta2.jpg',
      'https://afandistudio.net/dusun_semilir/alas_tirta3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Warisan Indonesia',
    goal: 'Belanja',
    description:
        'Spot wahana yang satu ini berisi barang sourvenir dan kerajinan, seperti keramik, batik, tas, ornamen, dan patung dari seluruh penjuru Indonesia. Pengunjung bisa membelinya sebagai salah satu alternatif oleh-oleh khas semarang. Selain belanja sourvenir, pengunjung juga bisa berfoto disini karena interiornya lumayan instagenic',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 20:00',
    ticketPrice: 'Free',
    imageAsset: 'images/warisan_indonesia.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/warisan_indonesia1.jpg',
      'https://afandistudio.net/dusun_semilir/warisan_indonesia2.jpg',
      'https://afandistudio.net/dusun_semilir/warisan_indonesia3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Cemilan Indonesia',
    goal: 'Belanja',
    description:
        'Toko oleh oleh di Dusun Semilir yang terdapat berbagai macam makanan, snack khas dan kekinian, Snack Jadul, Manisan, Chocolate, Bandeng, Bakpia, Nanas Madu, Wingko, Getuk, Dodol, dan masih banyak lainnya.Di sini kami menyediakan aneka cemilan khas daerah yang tentunya halal, enak dengan harga yang terjangkau.',
    openDays: 'Buka Setiap Hari',
    openTime: '11:00 - 17:00',
    ticketPrice: 'Free',
    imageAsset: 'images/cemilan_indonesia.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/cemilan_indonesia1.jpg',
      'https://afandistudio.net/dusun_semilir/cemilan_indonesia2.jpg',
      'https://afandistudio.net/dusun_semilir/cemilan_indonesia3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Jalan Kenangan',
    goal: 'Spot Selfie',
    description:
        'Hidupkan Nostalgia! Sepanjang jalan berkonsep street market. Lokasi yang penuh warna warni lampu, menambah suasana yang lebih menyenangkan saat kita berbelanja dan menikmati makanan bersama keluarga atau teman-teman.Jalan jalan, kuliner & hunting foto di Jalan Kenangan Dusun Semilir nggak ada habisnya.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 15:30',
    ticketPrice: 'Free',
    imageAsset: 'images/jalan_kenangan.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/jalan_kenangan1.jpg',
      'https://afandistudio.net/dusun_semilir/jalan_kenangan2.jpg',
      'https://afandistudio.net/dusun_semilir/jalan_kenangan3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Banyu Biru',
    goal: 'Spot Selfie',
    description:
        'Sebuah zona khusus bertema danau bohemian, dilengkapi dengan air mancur menari, bantal taman, tenda gazebo untuk keluarga berkumpul ataupun bersantai. Di sini di Banyu Biru juga dapat bermain di danau, naik kapal, atau ber-swa foto dengan pemandangan yang indah dan udara sejuk.',
    openDays: 'Buka Setiap Hari',
    openTime: '10:00 - 17:00',
    ticketPrice: 'Rp 20.000',
    imageAsset: 'images/banyu_biru.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/banyu_biru1.jpg',
      'https://afandistudio.net/dusun_semilir/banyu_biru2.jpg',
      'https://afandistudio.net/dusun_semilir/banyu_biru3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Gunungan Resto',
    goal: 'Kuliner',
    description:
        'Ini Gunungan Restoran, area makan & minum terbaru di Dusun semilir. Menu makanan disini special, karena tempatnya sangat amat special juga, ada Lawar bali, Steak lidah bumbu Bali, Sate maranggi, Sop buntut asem asem dan banyak lagi yang pasti lezat. Buktikan sendiri sejuknya bersama orang-orang terkasih. Masih di area Gunungan Restoran, ada area outdoor The panorama namanya, dari sini kita bisa menikmati pemandangan 5 gunung dan 7 stupa. Nikmati indahnya pemandangan alami, sambil seruput kopi khas Dusun semilir sedaaap.',
    openDays: 'Buka Setiap Hari',
    openTime: '11:00 - 17:00',
    ticketPrice: 'Free',
    imageAsset: 'images/gunungan_resto.jpg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/gunungan_resto1.jpg',
      'https://afandistudio.net/dusun_semilir/gunungan_resto2.jpg',
      'https://afandistudio.net/dusun_semilir/gunungan_resto3.jpg',
    ],
  ),
  TourismPlace(
    name: 'Sepoi Sepoi',
    goal: 'Kuliner',
    description:
        'Disini kamu bisa ngerasain experience baru makan malam bareng temen atau keluarga dengan pelayanan spesial langsung dari Chef andalan kita. Apalagi dengan dekorasi yang Customized bakal bikin kamu betah berlama lama disini. Berbagai macam makanan tersedia disini, mulai dari Super Penyet, Sepoi-Sepoi Jamblangan, Dusun Fried chicken, Bakso Brengos Bandungan, Lontong tuyuhan, Kepala Manyung, Smookie Ice, dll.',
    openDays: 'Buka Setiap Hari',
    openTime: '11:00 - 17:00',
    ticketPrice: 'Free',
    imageAsset: 'images/sepoi_sepoi.jpeg',
    imageUrls: [
      'https://afandistudio.net/dusun_semilir/sepoi_sepoi1.jpg',
      'https://afandistudio.net/dusun_semilir/sepoi_sepoi2.jpg',
      'https://afandistudio.net/dusun_semilir/sepoi_sepoi3.jpg',
    ],
  ),
];
