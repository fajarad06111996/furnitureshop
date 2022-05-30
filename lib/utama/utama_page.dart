import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';

class UtamaPage extends StatelessWidget {
  const UtamaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF21BFBD),
      body: Container(
        decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/gambar/bg4.jpg"),
            //   fit: BoxFit.cover,
            // ),
            ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Positioned(
                child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.green),
            )),
            SizedBox(
              height: 130,
            ),
            Image.asset(
              'assets/gambar/clock.png',
              width: 167,
              height: 157,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Selamat Datang",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Nikmati Pengalaman Terbaru \n Untuk Kemudahan Belanja Online Dan Pusat Informasi Dalam Satu Genggaman",
              style: TextStyle(fontFamily: 'Montserrat'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onPressed: () {},
              child: Text(
                'Mulai',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
