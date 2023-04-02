import 'package:flutter/material.dart';
import 'package:uts/dashboard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/profil.jpg',
                      width: MediaQuery.of(context).size.width / 2,
                    ))),
            SizedBox(height: 20),
            Text('Nama : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text('Agung Prayogi', style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text('NIM: ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text('123200085', style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text('Kelas : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text('D', style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text('Tempat, Tanggal Lahir : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text('Curup, 15 Mei 2001', style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            Text('Cita - Cita : ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text(
                'Menjadi Seorang Data Scientist atau Machine Learning Engineering',
                style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    ));
  }
}
