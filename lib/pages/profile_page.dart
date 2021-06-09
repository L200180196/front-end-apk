part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;
  bool _visible3 = false;
  bool _visible4 = false;
  void showInformasi() {
    setState(() {
      _visible = !_visible;
    });
  }

  void hideInformasi() {
    setState(() {
      _visible = !_visible;
    });
  }

  void showedit1() {
    setState(() {
      _visible1 = !_visible1;
      _visible2 = false;
      _visible3 = false;
      _visible4 = false;
    });
  }

  void onLogOutpressed() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertLogout();
        });
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return GantiFotoProfile();
        });
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _visible1 = false;
            _visible2 = false;
            _visible3 = false;
            _visible4 = false;
          });
        },
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.37,
              width: double.infinity,
              child: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipPath(
                      clipper: OvalBottomBorderClipper(),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [blueColors, blueColors2],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      ),
                    ),
                  ),
                  Positioned(
                      top: orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.03
                          : 20,
                      child: Text(
                        "Profil Kamu",
                        style: blackFontStyle.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                    bottom: 2,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.height * 0.23,
                                height:
                                    MediaQuery.of(context).size.height * 0.23,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.height * 0.23,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(4),
                                      image: DecorationImage(
                                        image: AssetImage("assets/jonas.png"),
                                        // fit: BoxFit.contain
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -5,
                          right: -5,
                          child: GestureDetector(
                            onTap: () => _onButtonPressed(),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [blueColors2, blueColors],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  iconSize: 30,
                                  color: blueColors2,
                                  alignment: Alignment.bottomRight,
                                  icon: Icon(Icons.camera_alt_rounded,
                                      color: Colors.white),
                                  onPressed: () => _onButtonPressed(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.038
                          : 20,
                      left: 20,
                      child: _visible == true
                          ? new IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                              onPressed: () {
                                hideInformasi();
                                setState(() {
                                  _visible1 = false;
                                  _visible2 = false;
                                  _visible3 = false;
                                  _visible4 = false;
                                });
                              })
                          : SizedBox())
                ],
              ),
            ),

            ///BODY PAGE
            Container(
                child: _visible == false
                    ? Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 20,
                            width: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: "4A81E7".toColor(),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Pencari Kerja",
                                style: blackFontStyle3.copyWith(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin:
                                EdgeInsets.fromLTRB(defaultMargin, 10, 30, 100),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: TextButton.icon(
                                      onPressed: () {
                                        showInformasi();
                                      },
                                      icon: CircleAvatar(
                                        backgroundColor: blueColors,
                                        radius: 18,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        // child:Icons.alternate_email_rounded,
                                        // color: Colors.blue,
                                      ),
                                      label: Text(
                                        "    Informasi Profil",
                                        style: blackFontStyle3.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: TextButton.icon(
                                      onPressed: () {
                                        Get.to(GantiPassword());
                                      },
                                      icon: CircleAvatar(
                                        backgroundColor: blueColors,
                                        radius: 18,
                                        child: Icon(
                                          Icons.lock_outline,
                                          color: Colors.white,
                                        ),
                                        // child:Icons.alternate_email_rounded,
                                        // color: Colors.blue,
                                      ),
                                      label: Text(
                                        "    Ganti Password",
                                        style: blackFontStyle3.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      )),
                                ),
                                TextButton.icon(
                                    onPressed: () => onLogOutpressed(),
                                    icon: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 18,
                                      child: Icon(
                                        Icons.power_settings_new,
                                        color: Colors.white,
                                      ),
                                      // child:Icons.alternate_email_rounded,
                                      // color: Colors.blue,
                                    ),
                                    label: Text(
                                      "    Keluar",
                                      style: blackFontStyle3.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                              ],
                            ),
                          )
                        ],
                      )
                    : Container(
                        margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 20,
                            width: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: "4A81E7".toColor(),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Pencari Kerja",
                                style: blackFontStyle3.copyWith(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 24),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ///NAMA
                                  Container(
                                    margin: EdgeInsets.only(top: 24),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Dadang Ramadhan",
                                            style: blackFontStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16)),
                                        Row(
                                          children: [
                                            Visibility(
                                              visible: _visible4,
                                              child: SizedBox(
                                                height: 32,
                                                width: 60,
                                                child: RaisedButton(
                                                  elevation: 2,
                                                  onPressed: () {},
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Text(
                                                    "Edit",
                                                    style: blackFontStyle3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                  Icons.more_vert,
                                                  color: greyColor4,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _visible4 = !_visible4;
                                                    _visible1 = false;
                                                    _visible2 = false;
                                                    _visible3 = false;
                                                  });
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Divider(
                                      thickness: 1.5,
                                      color: "F2F2F2".toColor(),
                                    ),
                                  ),

                                  ///PENDIDIKAN
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Pendidikan",
                                            style: blackFontStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16)),
                                        Row(
                                          children: [
                                            Visibility(
                                              visible: _visible1,
                                              child: SizedBox(
                                                height: 32,
                                                width: 60,
                                                child: RaisedButton(
                                                  elevation: 2,
                                                  onPressed: () {},
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Text(
                                                    "Edit",
                                                    style: blackFontStyle3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                  Icons.more_vert,
                                                  color: greyColor4,
                                                ),
                                                onPressed: () {
                                                  showedit1();
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("2020",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Universitas Ahmad Dahlan",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Tingkat",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: greyColor4,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("S1",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Jurusan",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: greyColor4,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Teknik Informatika",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Nilai Akhir",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: greyColor4,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 5,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("3.4/4.0",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Divider(
                                      thickness: 1.5,
                                      color: "F2F2F2".toColor(),
                                    ),
                                  ),

                                  ///Keterampilan
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Keterampilan",
                                            style: blackFontStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16)),
                                        Row(
                                          children: [
                                            Visibility(
                                              visible: _visible2,
                                              child: SizedBox(
                                                height: 32,
                                                width: 60,
                                                child: RaisedButton(
                                                  elevation: 2,
                                                  onPressed: () {},
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Text(
                                                    "Edit",
                                                    style: blackFontStyle3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                  Icons.more_vert,
                                                  color: greyColor4,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _visible1 = false;

                                                    _visible3 = false;
                                                    _visible4 = false;
                                                    _visible2 = !_visible2;
                                                  });
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("Utama",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  "python, CSS, HTML, Java Script",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Divider(
                                      thickness: 1.5,
                                      color: "F2F2F2".toColor(),
                                    ),
                                  ),

                                  ///TENTANG SAYA
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Tentang Saya",
                                            style: blackFontStyle.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16)),
                                        Row(
                                          children: [
                                            Visibility(
                                              visible: _visible3,
                                              child: SizedBox(
                                                height: 32,
                                                width: 60,
                                                child: RaisedButton(
                                                  elevation: 2,
                                                  onPressed: () {},
                                                  color: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Text(
                                                    "Edit",
                                                    style: blackFontStyle3,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                icon: Icon(
                                                  Icons.more_vert,
                                                  color: greyColor4,
                                                ),
                                                onPressed: () {
                                                  _visible1 = false;
                                                  _visible2 = false;

                                                  _visible4 = false;
                                                  setState(() {
                                                    _visible3 = !_visible3;
                                                  });
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("Alamat",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Sleman, DI. Yogyakarta",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Text("Email",
                                              style: blackFontStyle.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: greyColor4,
                                                  fontSize: 12)),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Dadang@gmail.com",
                                                  style:
                                                      blackFontStyle.copyWith(
                                                          color: Colors.black,
                                                          fontSize: 12))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ])))
          ],
        ),
      ),
    );
  }
}
