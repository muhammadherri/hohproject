import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsAdd extends StatefulWidget {
  @override
  State<ProductsAdd> createState() => _ProductsAddState();
}

class _ProductsAddState extends State<ProductsAdd> {
  TextEditingController category = TextEditingController();
  TextEditingController products = TextEditingController();
  TextEditingController price = TextEditingController();
  void addproducts() {
    var url = "http://192.168.1.14:8080/humanproject/addproducts.php";
    http.post(url, body: {
      "products": products.text,
      "categories": category.text,
      "price": price.text,
    });
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
                  addproducts();
                  Navigator.pop(context);
                },
                child: Text("Add Data"),
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}
