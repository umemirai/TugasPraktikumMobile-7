import 'package:flutter/material.dart';
import 'package:pertemuan7/models/product.dart';

class Keranjang extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;
  int get totalItem => _items.length;

  void add(Product p) {
    _items.add(p);
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
