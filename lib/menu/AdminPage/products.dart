import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:humanity/menu/AdminPage/productadd.dart';
import 'package:humanity/menu/AdminPage/productsdetail.dart';

class Products extends StatefulWidget {
  Products({this.username});
  final String username;
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // ignore: non_constant_identifier_names
  Future<List> getdata_products() async {
    final response =
        await http.get("http://192.168.1.14:8080/humanproject/getproducts.php");
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductsAdd()),
          );
        }
      ),
      body: new FutureBuilder<List>(
          future: getdata_products(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? new Productslist(list: snapshot.data,)
                : new Center(
                    child: new CircularProgressIndicator(),
                  );
          }),
    );
  }
}

// ignore: must_be_immutable
class Productslist extends StatelessWidget {
  List list;
  Productslist({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ProductsDetail(
                      list: list,
                      index:i
                    ))),
            child: Card(
              child: new ListTile(
                title: Text(list[i]['categori']),
                subtitle: new Text(list[i]['nama_product']),
              ),
            ),
          ),
        );
      },
    );
  }
}
