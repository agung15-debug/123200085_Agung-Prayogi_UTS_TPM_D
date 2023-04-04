import 'package:flutter/material.dart';

class Tabung extends StatefulWidget {
  const Tabung({Key? key}) : super(key: key);

  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  double r = 0, t = 0, luas = 0, volume = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Tabung'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (txt) {
                r = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan jari-jari"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (txt) {
                t = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan tinggi"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    luas = 2 * 3.14 * r * (r + t);
                    volume = 3.14 * r * r * t;
                  });
                },
                child: Text('Hitung')),
            SizedBox(height: 20),
            Text('Luas Permukaan: $luas'),
            SizedBox(height: 20),
            Text('Volume: $volume'),
          ],
        ),
      ),
    ));
  }
}
