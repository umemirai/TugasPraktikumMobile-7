import 'package:flutter/material.dart';
import 'package:pertemuan7/models/keranjang.dart';
import 'package:provider/provider.dart';

class Keranjangscreen extends StatelessWidget {
  const Keranjangscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang Kamu'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Consumer<Keranjang>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.items.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(value.items[index].namaProduk),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  value.removeItem(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
