import 'package:flutter/material.dart';
import 'package:pertemuan7/models/keranjang.dart';
import 'package:pertemuan7/models/product.dart';
import 'package:pertemuan7/screen/KeranjangScreen.dart';
import 'package:provider/provider.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> pakaian = [
      Product('Kaos'),
      Product('Kemeja'),
      Product('Sepeda'),
      Product('Baju Sepeda'),
      Product('Topi'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Pakaian'),
        backgroundColor: Colors.blueAccent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Consumer<Keranjang>(
              builder: (context, value, child) => Badge(
                label: Text('${value.totalItem}'),
                isLabelVisible: value.totalItem > 0,
                child: IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Keranjangscreen()),
                  ),
                  icon: Icon(Icons.shopping_cart_checkout_sharp),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: pakaian.length,
        itemBuilder: (context, index) {
          final data = pakaian[index];
          return ListTile(
            title: Text(data.namaProduk),
            trailing: IconButton(
              onPressed: () =>
                  Provider.of<Keranjang>(context, listen: false).add(data),
              icon: Icon(Icons.add_circle_outline_rounded),
            ),
          );
        },
      ),
    );
  }
}
