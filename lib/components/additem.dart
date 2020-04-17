import 'package:flutter/material.dart';

class AddNewItem extends StatefulWidget {
  AddNewItem(this.addNew);
  final Function addNew;

  @override
  _AddNewItemState createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
  final titleController = TextEditingController();
  final namaController = TextEditingController();
  final hargaController = TextEditingController();
  final jumlahBarangController = TextEditingController();

  void saveNewItem() {
    final title = titleController.text;
    final nama = namaController.text;
    final harga = hargaController.text;
    final jumlahBarang = int.parse(jumlahBarangController.text);

    if (title.isEmpty || nama.isEmpty || harga.isEmpty || jumlahBarang <= 0) {
      return;
    }
    widget.addNew(title,nama,double.parse(harga),jumlahBarang);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title : Text("DATA KARYAWAN", style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ),
          body:SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Nama Barang'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nama Karyawan'),
                    controller: namaController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Harga'),
                    controller: hargaController,
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'jumlahBarang'),
                    controller: jumlahBarangController,
                    keyboardType: TextInputType.number,
                  ),
                  FlatButton(
                    child: Text('Add'),
                    onPressed: saveNewItem,
                    textColor: Colors.black,
                  )
                ],
              ),
            ),
                  ),
        );
      }
