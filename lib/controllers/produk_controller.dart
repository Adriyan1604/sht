import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:praktikum/models/produk_model.dart'; // Pastikan model produk terhubung dengan benar

class ProdukController extends GetxController {
  var isLoading = true.obs;
  var produkList = <Produk>[].obs; // Menggunakan model Produk yang sesuai

  @override
  void onInit() {
    fetchProduk();
    super.onInit();
  }

  void fetchProduk() async {
    try {
      isLoading(true);
      var response = await http.get(Uri.parse('https://dummyjson.com/products'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        var produkData = jsonData['products'] as List;
        produkList.value = produkData.map((produk) => Produk.fromJson(produk)).toList(); // Menggunakan Produk.fromJson
      } else {
        Get.snackbar('Error', 'Gagal mengambil data produk');
      }
    } finally {
      isLoading(false);
    }
  }
}
