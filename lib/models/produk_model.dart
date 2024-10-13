class Produk {
  final int id;
  final String nama; // Menggunakan title dari API
  final String deskripsi; // Menggunakan description dari API
  final String gambar; // Menggunakan thumbnail dari API
  final double harga; // Menggunakan price dari API

  Produk({
    required this.id,
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
  });

  // Factory method untuk mengubah JSON ke object Produk
  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      id: json['id'],
      nama: json['title'], // Sesuaikan dengan struktur JSON
      deskripsi: json['description'],
      gambar: json['thumbnail'],
      harga: json['price'].toDouble(),
    );
  }
}
