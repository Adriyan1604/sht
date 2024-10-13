import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/produk_page.dart';
import 'pages/webview_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => ProdukPage()),
        GetPage(name: '/webview', page: () => WebViewPage()),
      ],
    );
  }
}
