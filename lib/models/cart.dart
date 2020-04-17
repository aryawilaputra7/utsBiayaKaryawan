import 'package:flutter/foundation.dart';

class Cart {
  final String id;
  final String title;
  final String nama;
  final double harga;
  final int jumlahBarang;

  Cart({
    @required this.id,
    @required this.title,
    @required this.nama,
    @required this.harga,
    @required this.jumlahBarang
  });
}