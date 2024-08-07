import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarangNonMedis02 extends StatelessWidget {
  BarangNonMedis02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(207, 237, 57, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // buat bagian atasnya atau appbar nya
            Container(
              color: Color.fromRGBO(207, 237, 57, 1),
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              const SizedBox(width: 25),                                                                                                                                                                                                                                                                                                                                
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
                  
                  Center(
                    child: Image.asset(
                      'assets/image/bigtermo.png',
                      width: 300,
                    ),
                  ),
                ],
              ),
            ),
            // buat bagian atasnya atau appbar nya (end)

            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Termometer',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Detail Produk',style: TextStyle(fontSize: 20,fontFamily: "Poppins",fontWeight: FontWeight.bold),),
                        const SizedBox(height: 15,),
                        DetailRow(label: 'Jumlah', value: '8'),
                        DetailRow(label: 'Tanggal Masuk', value: '02/05/24'),
                        DetailRow(label: 'Tanggal Produksi', value: '01/05/24'),
                        DetailRow(label: 'Jenis', value: 'Digital'),
                        DetailRow(label: 'Tampilan Layar', value: 'LCD'),
                        DetailRow(label: 'Kategori', value: 'Barang'),
                        DetailRow(label: 'Nomor Batch', value: 'B215712'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/barcode.png',
                              width: 300,
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class DetailRow extends StatelessWidget {


  final String label;
  final String value;
    DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"))),
            Expanded(
              flex: 3,
              child: Text(value))
        ],
      ),
    );
  }
}