import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double a = 0, b = 0, c = 0, d = 0, luas = 0, keliling = 0, t = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trapesium'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (txt) {
                a = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan sisi a"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (txt) {
                b = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan sisi b"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (txt) {
                c = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan sisi c"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (txt) {
                d = double.parse(txt);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Masukkan sisi d"),
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
                    luas = (a + b) / 2 * t;
                    keliling = a + b + c + d;
                  });
                },
                child: Text('Hitung')),
            SizedBox(height: 20),
            Text('Luas = $luas'),
            SizedBox(height: 20),
            Text('Keliling = $keliling'),
          ],
        ),
      ),
    );
  }
}
