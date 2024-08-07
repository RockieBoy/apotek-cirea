import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app_apotik_cirea/kelola_barang_medis/KelolaBarangMedis.dart';
import 'package:mobile_app_apotik_cirea/kelola_obat/KelolaObat.dart';
import 'package:mobile_app_apotik_cirea/account.dart';
import 'package:mobile_app_apotik_cirea/validate/LogoutValidate.dart';

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
                        'assets/image/mediumprofile.png'),
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
              leading: const Icon(Icons.person),
              title: const Text('Account'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Account();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return const LogoutValidate();
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
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
                  CardSelector(
                      name1: 'Kelola Obat - Obatan', 
                      name2: 'Kelola semua hal terkait obat-obatan', 
                      cardIcon: Icons.medication_rounded, 
                      cardColor: const Color.fromRGBO(97, 94, 252, 1), 
                      route: KelolaObat()),
                  CardSelector(
                      name1: 'Kelola Barang Medis',
                      name2: 'Kelola semua hal terkait Barang Medis',
                      cardIcon: Icons.medical_services,
                      cardColor: const Color.fromRGBO(175, 71, 210, 1),
                      route: KelolaBarangMedis()),
                  CardSelector(
                      name1: 'Kelola Barang Non Medis',
                      name2: 'Kelola semua hal terkait barang non medis',
                      cardIcon: Icons.shopping_bag_outlined,
                      cardColor: const Color.fromRGBO(255, 178, 44, 1),
                      route: KelolaObat()),
                  CardSelector(
                      name1: 'Kelola Sampingan',
                      name2: 'Kelola semua hal terkait samping',
                      cardIcon: Icons.storefront_outlined,
                      cardColor: const Color.fromRGBO(64, 165, 120, 1),
                      route: KelolaObat()),
                  const SizedBox(height: 30),
                  const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  CardSelector(
                      name1: 'Aktifitas Gudang',
                      name2: 'Tinjau Aktifitas gudang',
                      cardIcon: Icons.store,
                      cardColor: const Color.fromRGBO(16, 203, 0, 1),
                      route: KelolaObat()),
                  CardSelector(
                      name1: 'Kontak Supplier',
                      name2: 'Hubungi Supplier',
                      cardIcon: Icons.perm_contact_calendar,
                      cardColor: const Color.fromRGBO(5, 12, 156, 1),
                      route: KelolaObat()),
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
  final IconData cardIcon;
  final Color cardColor;
  final Widget route;

  const CardSelector({
    Key? key,
    required this.name1,
    required this.name2,
    required this.cardIcon,
    required this.cardColor,
    required this.route,
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
                height: 85,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    children: [
                      Icon(
                        cardIcon,
                        color: Colors.white,
                        size: 40.0,
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
