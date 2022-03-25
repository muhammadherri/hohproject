import 'package:flutter/material.dart';
import 'package:humanity/menu/AdminPage/Products/products.dart';
import 'package:humanity/menu/AdminPage/Products/productsedit.dart';
import 'package:http/http.dart' as http;

class ProductsDetail extends StatefulWidget {
  List list;
  int index;

  ProductsDetail({this.index, this.list});
  @override
  State<ProductsDetail> createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  void deleteProducts(){
    var url = "http://192.168.1.14:8080/humanproject/deleteproducts.php";
    http.post(url,body:{
      'id':widget.list[widget.index]['id'],
    });
  }
  void confirm() {
    AlertDialog alertDialog = AlertDialog(
      content: Text(
          "Are you sure want to delete '${widget.list[widget.index]['nama_product']}' ?"),
      actions: [
        RaisedButton(
          onPressed: () {
            deleteProducts();
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Products()));
          },
          child: Text("Ok Delete"),
          color: Colors.red,
        ),
        RaisedButton(
            onPressed: () =>Navigator.pop(context), child: Text("Cancel"), color: Colors.green)
      ],
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]['nama_product']}"),
      ),
      body: Container(
        height: 250,
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Center(
              child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 30)),
              Text(
                widget.list[widget.index]['nama_product'],
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Category : ${widget.list[widget.index]['categori']}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Price : ${widget.list[widget.index]['harga']}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Image : ${widget.list[widget.index]['gambar']}",
                style: TextStyle(fontSize: 20),
              ),
              Padding(padding: const EdgeInsets.only(top: 30)),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsEdit(
                                  list: widget.list,
                                  index: widget.index,
                                )),
                      );
                    },
                    child: Text("Edit"),
                    color: Colors.green,
                  ),
                  RaisedButton(
                    onPressed: () => confirm(),
                    child: Text("Delete"),
                    color: Colors.red,
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
