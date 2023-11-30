import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:inventory/models/product.dart';
import 'package:inventory/widgets/left_drawer.dart';
import 'package:inventory/screens/shoplist_form.dart';

class DetailPage extends StatelessWidget {
  final String cardname;
  final int price;
  final String source;

  const DetailPage({Key? key, required this.cardname, required this.price, required this.source}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cardname,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  price.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  source,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            
          ),
        ),
    );
  }
}

