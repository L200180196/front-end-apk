import 'package:flutter/material.dart';
import 'package:latihan1/widgets/lamaran_sukses.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

class Lamaran extends StatefulWidget {
  @override
  _LamaranState createState() => _LamaranState();
}

void _openPopupBerhasil(context) {
  Navigator.of(context).push(new MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return new LamaranSukses();
      },
      fullscreenDialog: true));
}

class _LamaranState extends State<Lamaran> {
  Color blueColors = "528FFF".toColor();
  Color blueColors2 = "75A6FF".toColor();
  TextStyle blackFontStyle3 = GoogleFonts.inter()
      .copyWith(color: Colors.black, fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "75A6FF".toColor(),
      body: Stack(
        children: [
          ////Body
          Container(
            margin: EdgeInsets.only(top: 80),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              color: Colors.white,
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ////Body Atas
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        child: Text(
                          "Kirim Lamaran",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/close.png'))),
                        ),
                      ),
                    ],
                  ),
                ),
                ////Body Tengah
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        child: Text(
                          "Upload CV KAMU",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 11),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Upload file CV kamu",
                                style: TextStyle(color: "808D9D".toColor()),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: "528FFF".toColor(),
                              ),
                              child: Text(
                                "Pilih File",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Surat Lamaran Kerja",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: "F4F9F9".toColor()),
                              child: TextField(
                                maxLines: 22,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        "Ketikkan surat lamaran kerja kamu"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 24, left: 24, bottom: 24),
                  child: RaisedButton(
                      onPressed: () {
                        _openPopupBerhasil(context);
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      // color: blueColors,
                      padding: EdgeInsets.all(0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [blueColors2, blueColors],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          alignment: Alignment.center,
                          child: Text(
                            'Cari Pekerjaan',
                            style: blackFontStyle3.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          ////Bottom
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 60,
          //     padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(16),
          //           topRight: Radius.circular(16)),
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black.withOpacity(0.3),
          //           blurRadius: 5,
          //           offset: Offset(
          //             2,
          //             2,
          //           ),
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         GestureDetector(
          //           onTap: () {
          //             _openPopupBerhasil(context);
          //           },
          //           child: Container(
          //             alignment: Alignment.center,
          //             height: 40,
          //             width: MediaQuery.of(context).size.width * 0.8,
          //             // padding:
          //             //     EdgeInsets.symmetric(vertical: 15, horizontal: 126),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(8),
          //               color: "75A6FF".toColor(),
          //             ),
          //             child: Text(
          //               "Kirim Lamaran",
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.bold,
          //                 letterSpacing: 1,
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
