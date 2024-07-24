import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KelolaObat extends StatelessWidget {
  KelolaObat({super.key});

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
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                              const SizedBox(width: 25),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Text(
                                        "Halo...",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w200,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Achmad",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900,
                                              fontSize: 25))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/image/profile.png"),
                            radius: 24,
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

            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Kelola Obat',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(228, 245, 245, 245),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                          ),
                          child: const Text("Cetak Laporan",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        hintText: 'Search...',
                        suffixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                              elevation: 8,
                              color: const Color.fromRGBO(50, 228, 191, 1),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  splashColor: Colors.blueGrey,
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 175,
                                    height: 175,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                        ),
                                        Image.asset(
                                            'assets/image/paracetamol.png',
                                            width: 100,
                                            fit: BoxFit.cover),
                                        const Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Text(
                                            'Paracetamol',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            '24 Pack',
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Card(
                              elevation: 8,
                              color: const Color.fromRGBO(150, 157, 19, 1),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  splashColor: Colors.blueGrey,
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 175,
                                    height: 175,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                        ),
                                        Image.asset(
                                            'assets/image/paracetamol.png',
                                            width: 100,
                                            fit: BoxFit.cover),
                                        const Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Text(
                                            'Nebacitin Powder',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            '32 Pack',
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Card(
                              elevation: 8,
                              color: const Color.fromRGBO(255, 178, 44, 1),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  splashColor: Colors.blueGrey,
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 175,
                                    height: 175,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                        ),
                                        Image.asset(
                                            'assets/image/paracetamol.png',
                                            width: 100,
                                            fit: BoxFit.cover),
                                        const Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Text(
                                            'Aspirin',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            '12 Pack',
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Card(
                              elevation: 8,
                              color: const Color.fromRGBO(29, 48, 219, 1),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  splashColor: Colors.blueGrey,
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 175,
                                    height: 175,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                        ),
                                        Image.asset(
                                            'assets/image/paracetamol.png',
                                            width: 100,
                                            fit: BoxFit.cover),
                                        const Padding(
                                          padding: EdgeInsets.all(1),
                                          child: Text(
                                            'Amoxicilline',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: Text(
                                            '24 Pack',
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w900,
                                              fontSize: 14.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Card(
                              elevation: 8,
                              color: const Color.fromRGBO(255, 178, 44, 1),
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(25),
                                  splashColor: Colors.blueGrey,
                                  onTap: () {},
                                  child: SizedBox(
                                    width: 175,
                                    height: 175,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            topRight: Radius.circular(25),
                                          ),
                                        ),
                                        Image.asset(
                                            'assets/image/circleplus.png',
                                            width: 100,
                                            fit: BoxFit.cover),
                                        const Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Text(
                                            'Tambah Data',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
