import 'package:flutter/material.dart';



class ProfileAccount extends StatelessWidget {
  const ProfileAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF625BFF),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // buat bagian atasnya atau appbar nya
            Container(
              color: const Color(0xFF625BFF),
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
                              const SizedBox(width: 15),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(),
                ],
              ),
            ),
            // buat bagian atasnya atau appbar nya (end)
            Image.asset(
              'assets/image/bigprofile.png',
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                const Text('Identitas Diri', style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 25),),
                Container(
                  padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        DetailRow(label: 'Nama :'),
                        DetailRow2(label: 'Achmad'),
                        DetailRow(label: 'Tempat Tinggal :'),
                        DetailRow2(label: 'Cirebon'),
                        DetailRow(label: 'Jabatan :'),
                        DetailRow2(label: 'Karyawan'),
                        const SizedBox(height: 150,),
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
  DetailRow({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Poppins"))),
        ],
      ),
    );
  }
}
class DetailRow2 extends StatelessWidget {
  final String label;
  DetailRow2({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(label,
                  style: const TextStyle(
                      fontFamily: "Poppins"))),
        ],
      ),
    );
  }
}
