import 'package:flutter/material.dart';

class ProductsDetail extends StatefulWidget {
  List list;
  int index;

  ProductsDetail({this.index, this.list});
  @override
  State<ProductsDetail> createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
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
                  RaisedButton(onPressed: (){},child: Text("Edit"),color: Colors.green,),
                  RaisedButton(onPressed: (){},child: Text("Hapus"),color: Colors.red,),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
