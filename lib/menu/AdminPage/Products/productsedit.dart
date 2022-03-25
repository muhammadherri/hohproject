import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:humanity/menu/AdminPage/Products/products.dart';

class ProductsEdit extends StatefulWidget {
  List list;
  int index;
  ProductsEdit({this.list, this.index});
  @override
  State<ProductsEdit> createState() => _ProductsEditState();
}

class _ProductsEditState extends State<ProductsEdit> {
  TextEditingController category;
  TextEditingController products;
  TextEditingController price;
  void editproducts() {
    var url = "http://192.168.1.14:8080/humanproject/editproducts.php";
    http.post(url, body: {
      "id":widget.list[widget.index]['id'],
      "products": products.text,
      "categories": category.text,
      "price": price.text,
    });
  }

  @override
  Void initState(){
    category = TextEditingController(text: widget.list[widget.index]['categori']);
    products = TextEditingController(text: widget.list[widget.index]['nama_product']);
    price = TextEditingController(text: widget.list[widget.index]['harga']);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Add'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              TextField(
                controller: category,
                decoration: InputDecoration(
                    hintText: 'Nama Category', labelText: 'Nama Category'),
              ),
              TextField(
                controller: products,
                decoration: InputDecoration(
                    hintText: 'Nama Product', labelText: 'Nama Product'),
              ),
              TextField(
                controller: price,
                decoration:
                    InputDecoration(hintText: 'Price', labelText: 'Price'),
              ),
              RaisedButton(
                onPressed: () {
                  editproducts();
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Products()));
                },
                child: Text("Submit"),
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
