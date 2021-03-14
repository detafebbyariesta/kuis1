import 'package:flutter/material.dart';

class PersegiResult extends StatelessWidget{

  PersegiResult({@required this.panjang_persegi, @required this.lebar_persegi});
  final int panjang_persegi;
  final int lebar_persegi;
  int hasil;
  int kel;
  
  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_persegi + lebar_persegi * 1.0);
    double kel = (panjang_persegi + lebar_persegi * 2.0);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil'),
        ),
        body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20,
              child: Container(
                color: Colors.white,
              ),
              ),
              Text(
                'Luas Persegi :',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                '$hasil',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                'Keliling Persegi :',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                '$kel',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ),
    );
  }
  }