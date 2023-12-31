import 'package:flutter/material.dart';
import 'package:inventory/widgets/left_drawer.dart';
import 'package:inventory/screens/menu.dart';
import 'package:inventory/main.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({super.key});

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _cardname = "";
  int _price = 0;
  String _source = "";

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Item',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Padding(
              padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Nama Item",
              labelText: "Nama Item",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _cardname = value!;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong!";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Amount",
              labelText: "Amount",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),

            onChanged: (String? value) {
              setState(() {
                _price = int.parse(value!);
                });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Amount tidak boleh kosong!";
              }
              if (int.tryParse(value) == null) {
                return "Amount harus berupa angka!";
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Description",
              labelText: "Description",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String? value) {
              setState(() {

                _source = value!;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Description tidak boleh kosong!";
              }
              return null;
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(Colors.indigo),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  // Kirim ke Django dan tunggu respons
                  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                  final response = await request.postJson(
                      "http://localhost:8000/create-flutter/",
                      jsonEncode(<String, String>{
                        'name': _cardname,
                        'price': _price.toString(),
                        'source': _source,
                        // TODO: Sesuaikan field data sesuai dengan aplikasimu
                      }));
                  if (response['status'] == 'success') {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content: Text("Produk baru berhasil disimpan!"),
                    ));
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                      content:
                      Text("Terdapat kesalahan, silakan coba lagi."),
                    ));
                  }
                }
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )]
      ),
    ),
      ),
    );
  }
}