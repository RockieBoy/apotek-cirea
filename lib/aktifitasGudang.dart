import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app_apotik_cirea/Dashboard.dart';
import 'package:mobile_app_apotik_cirea/account.dart';

class AktifitasGudang extends StatelessWidget {
  AktifitasGudang({super.key});

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
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Dashboard();
                                    }));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                              const SizedBox(width: 15),
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
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Account();
                              }));
                            },
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/image/profile.png"),
                              radius: 24,
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
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
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          'Aktifitas Gudang',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(228, 245, 245, 245),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                          ),
                          child: const Text(
                            "Tahun",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(228, 245, 245, 245),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                            ),
                            child: const Text("Bulan",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900))),
                        const SizedBox(
                          width: 20,
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(228, 245, 245, 245),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                            ),
                            child: const Text("Minggu",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900)))
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Today',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const CardSelector(
                    name1: "Paracetamol (Obat)",
                    name2: "12/07/2024",
                    name3: "Keluar",
                    buttonColor: Color.fromRGBO(252, 0, 0, 1),
                    cardImage:  AssetImage('assets/image/paracetamol.png'),
                    cardColor: Colors.blue,
                    hasNavigation: false, // Tidak ada navigasi
                  ),
                  const CardSelector(
                    name1: "Paracetamol (Obat)",
                    name2: "12/07/2024",
                    name3: "Masuk",
                    buttonColor: Color.fromRGBO(16, 203, 0, 1),
                    cardImage:  AssetImage('assets/image/paracetamol.png'),
                    cardColor: Colors.blue,
                    hasNavigation: false, // Tidak ada navigasi
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Before',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const CardSelector(
                    name1: "Paracetamol (Obat)",
                    name2: "11/07/2024",
                    name3: "Keluar",
                    buttonColor: Color.fromRGBO(252, 0, 0, 1),
                    cardImage:  AssetImage('assets/image/paracetamol.png'),
                    cardColor: Colors.blue,
                    hasNavigation: false, // Tidak ada navigasi
                  ),
                  const CardSelector(
                    name1: "Paracetamol (Obat)",
                    name2: "12/07/2024",
                    name3: "Masuk",
                    buttonColor: Color.fromRGBO(16, 203, 0, 1),
                    cardImage:  AssetImage('assets/image/paracetamol.png'),
                    cardColor: Colors.blue,
                    hasNavigation: false, // Tidak ada navigasi
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSelector extends StatelessWidget {
  final String name1;
  final String name2;
  final String name3;
  final ImageProvider cardImage;
  final Color cardColor;
  final Color buttonColor;
  final Widget? route; // Biarkan ini nullable
  final bool hasNavigation;

  const CardSelector({
    Key? key,
    required this.name1,
    required this.name2,
    required this.name3,
    required this.cardImage,
    required this.cardColor,
    required this.buttonColor,
    this.route,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // Disable ListView's scrolling
      children: [
        Center(
          child: Card(
            elevation: 8,
            color: cardColor,
            clipBehavior: Clip.hardEdge,
            child: hasNavigation && route != null
                ? InkWell(
                    borderRadius: BorderRadius.circular(16),
                    splashColor: Colors.blueGrey,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return route!;
                      }));
                    },
                    child: buildCardContent(),
                  )
                : buildCardContent(),
          ),
        ),
      ],
    );
  }

  Widget buildCardContent() {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            Image(
              image: cardImage,
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    name2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: null, // Button ini dinonaktifkan
              style: ElevatedButton.styleFrom(
                disabledBackgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),),
              child: Text(name3, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
