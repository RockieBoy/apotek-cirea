import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Obat03 extends StatelessWidget {
  Obat03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(255, 178, 44, 1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // buat bagian atasnya atau appbar nya
            Container(
              color:const Color.fromRGBO(255, 178, 44, 1),
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
                      'assets/image/bigparacetamol.png',
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
                          'Paracetamol',
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
                        const Text(
                          'Detail Produk',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        DetailRow(label: 'Jumlah', value: '16'),
                        DetailRow(label: 'Tanggal Produksi', value: '02/07/24'),
                        DetailRow(label: 'Tanggal Kadalursa', value: '02/07/26'),
                        DetailRow(label: 'Kategori', value: 'Analgesik'),
                        DetailRow(label: 'Komposisi', value: 'Paracetamol 500 gram'),
                        DetailRow(label: 'Dosis', value: '1-2 tablet setiap 4-6 jam'),
                        DetailRow(label: 'Indikasi',value: 'Mengurangi demam dan nyeri'),
                        DetailRow(label: 'Kontraindikasi',value:'Hipersensitif terhadap paracetamol, penyakit hati berat'),
                        DetailRow(label: 'Nomor Batch', value: 'B215712'),
                        DetailRow(label: 'Bentuk Ketersediaan', value: 'Tablet'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/image/barcode.png',
                              width: 300,
                            ),
                          ],
                        ),
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
            flex: 2,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins"))),
            Expanded(
              flex: 3,
              child: Text(value))
        ],
      ),
    );
  }
}