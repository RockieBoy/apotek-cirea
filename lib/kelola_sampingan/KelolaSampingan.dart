import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app_apotik_cirea/Dashboard.dart';
import 'package:mobile_app_apotik_cirea/account.dart';
import 'package:mobile_app_apotik_cirea/kelola_sampingan/DetailSampingan.dart';

class KelolaSampingan extends StatelessWidget {
  KelolaSampingan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //tambah data
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(255, 222, 77, 1),
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/image/circleplus.png'),
          ),),
      ),
      //end tambah data
      
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Kelola Sampingan',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 50,
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
                      )),
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
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 14.0, horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CardSelector(
                      name1: 'Aqua',
                      name2: '2 List',
                      cardImage:
                          const AssetImage('assets/image/aqua.png'),
                      cardColor: Colors.blue,
                      route: DetailSampingan(),
                      editRoute: Dashboard()),
                  const SizedBox(
                    height: 550,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardSelector extends StatelessWidget {
  final String name1;
  final String name2;
  final ImageProvider cardImage;
  final Color cardColor;
  final Widget route;
  final Widget editRoute;

  const CardSelector({
    Key? key,
    required this.name1,
    required this.name2,
    required this.cardImage,
    required this.cardColor,
    required this.route,
    required this.editRoute,
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
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              splashColor: Colors.blueGrey,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return route;
                }));
              },
              child: SizedBox(
                width: double.infinity,
                height: 100,
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
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              name2,
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white, size: 40,),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return editRoute;
                          }));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
