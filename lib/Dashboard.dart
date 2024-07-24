import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app_apotik_cirea/auth/FirstPage.dart';
import 'package:mobile_app_apotik_cirea/KelolaObat.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF625BFF),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF625BFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/image/profile.png'),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Achmad',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Homepage();
                }));
              },
            ),
          ],
        ),
      ),

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
                                    _scaffoldKey.currentState?.openDrawer();
                                  },
                                  icon: const Icon(
                                    Icons.menu,
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
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(228, 245, 245, 245),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                        ),
        
                        child: const Text(
                          "Create", 
                          style: TextStyle(
                            fontFamily: "Poppins", 
                            fontSize: 15, 
                            fontWeight: FontWeight.w900
                            ),),
                      ),
                      const SizedBox(width: 10,),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(228, 245, 245, 245),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                          ),
                        child: const Text(
                          "Informasi", 
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                            ))),
                      const SizedBox(width: 10,),
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
                            fontSize: 15,
                            fontWeight: FontWeight.w900
                            )))
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Stok Barang',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Card(
                      elevation: 8,
                      color: const Color.fromRGBO(97, 94, 252, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        splashColor: Colors.blueGrey,
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                          return KelolaObat();
                          }));
                        },
                        child: const SizedBox(
                          width: 600,
                          height: 75,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Row(
                              children: [
                                Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Kelola Obat - Obatan',
                                        style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,)
                                      ),
                                      Text(
                                        'Kelola semua hal terkait obat',
                                        style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,),
                                      ),
                                    ],
                            
                                  )
                              ],
                            ),
                          ),
                      )
                      ),
                    ),
                    ),
                  const SizedBox(height: 20),
                  Center(
                    child: Card(
                      elevation: 8,
                      color: const Color.fromRGBO(175, 71, 210, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          splashColor: Colors.blueGrey,
                          onTap: () {},
                          child: const SizedBox(
                            width: 600,
                            height: 75,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Kelola Barang',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(
                                        'Kelola semua hal terkait Barang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Card(
                      elevation: 8,
                      color: const Color.fromRGBO(255, 178, 44, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          splashColor: Colors.blueGrey,
                          onTap: () {},
                          child: const SizedBox(
                            width: 600,
                            height: 75,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Kelola Perlengkapan',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(
                                        'Kelola semua hal terkait perlengkapan',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Card(
                      elevation: 8,
                      color:const Color.fromRGBO(64, 165, 120, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          splashColor: Colors.blueGrey,
                          onTap: () {},
                          child: const SizedBox(
                            width: 600,
                            height: 75,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Kelola Sampingan',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(
                                        'Kelola semua hal terkait sampingan',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Card(
                      elevation: 8,
                      color: const Color.fromRGBO(16, 203, 0, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          splashColor: Colors.blueGrey,
                          onTap: () {},
                          child: const SizedBox(
                            width: 600,
                            height: 75,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Aktifitas Gudang',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(
                                        'Tinjau aktifitas gudang',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Card(
                      elevation: 8,
                      color:const Color.fromRGBO(5, 12, 156, 1),
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(16),
                          splashColor: Colors.blueGrey,
                          onTap: () {},
                          child: const SizedBox(
                            width: 600,
                            height: 75,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.medical_services,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Kontak Supplier',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          )),
                                      Text(
                                        'Hubungi Supplier',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
