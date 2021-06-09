import 'package:flutter/material.dart';
import 'package:latihan1/pages/pages.dart';
import 'package:supercharged/supercharged.dart';

class LamaranSukses extends StatefulWidget {
  @override
  _LamaranSuksesState createState() => _LamaranSuksesState();
}

class _LamaranSuksesState extends State<LamaranSukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ////Body
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ////Body Atas
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 120,
                              height: 120,
                              margin: EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/berhasil_lamaran.png'),
                                    fit: BoxFit.contain),
                              ),
                            ),
                            Text(
                              "Kamu Berhasil Melamar",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text("Semoga Kamu Lolos Ke Tahap Selanjutnya")
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
            ////Bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: Offset(
                        2,
                        2,
                      ),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => MainPage());
                        Navigator.push(context, route);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.9,
                        // padding:
                        //     EdgeInsets.symmetric(vertical: 15, horizontal: 105),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: "75A6FF".toColor(),
                        ),
                        child: Text(
                          "Kembali Ke Beranda",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
