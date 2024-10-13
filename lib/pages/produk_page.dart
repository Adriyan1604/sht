import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/produk_controller.dart'; // Import controller

class ProdukPage extends StatelessWidget {
  final ProdukController produkController = Get.put(ProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk'),
        actions: [
          IconButton(
            icon: Icon(Icons.web),
            onPressed: () {
              Get.toNamed('/webview'); // Arahkan ke halaman WebView
            },
          ),
        ],
      ),
      body: Obx(() {
        if (produkController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: produkController.produkList.length,
            itemBuilder: (context, index) {
              var produk = produkController.produkList[index];
              return Card(
                child: ListTile(
                  leading: Image.network(produk.gambar),
                  title: Text(produk.nama),
                  subtitle: Text(produk.deskripsi),
                  trailing: Text('Rp ${produk.harga.toString()}'),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
