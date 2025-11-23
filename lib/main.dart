import 'package:flutter/material.dart';
import 'package:pertemuan7/models/keranjang.dart';
import 'package:pertemuan7/screen/ProductScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context) => Keranjang(),
    child: MaterialApp(
      title: 'Provide',
      debugShowCheckedModeBanner: false,
      home: Productscreen(),
    ),
  )
  );
}
