part of 'widgets.dart';

class LowonganBaru extends StatefulWidget {
  final UserSave save;

  LowonganBaru({this.save});

  @override
  _LowonganBaruState createState() => _LowonganBaruState();
}

class _LowonganBaruState extends State<LowonganBaru> {
  String selected = '1';
  int id;
  String nama;
  String gambar;
  String posisi;
  String gaji;
  String alamat;
  String pendidikan;
  String jamkerja;
  String deadline;
  String syaratumum;
  String syaratkhusus;
  String fasilitas;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        id = widget.save.perusahaan.id;
        nama = widget.save.perusahaan.nama;
        gambar = widget.save.perusahaan.gambar;
        posisi = widget.save.perusahaan.posisi;
        gaji = widget.save.perusahaan.gaji;
        alamat = widget.save.perusahaan.alamat;
        pendidikan = widget.save.perusahaan.pendidikan;
        jamkerja = widget.save.perusahaan.jamkerja;
        deadline = widget.save.perusahaan.deadline;
        syaratumum = widget.save.perusahaan.syaratumum;
        syaratkhusus = widget.save.perusahaan.syaratkhusus;
        fasilitas = widget.save.perusahaan.fasilitas;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Cobs(
                    id: id,
                    nama: nama,
                    gambar: gambar,
                    posisi: posisi,
                    gaji: gaji,
                    alamat: alamat,
                    pendidikan: pendidikan,
                    jamkerja: jamkerja,
                    deadline: deadline,
                    syaratkhusus: syaratkhusus,
                    syaratumum: syaratumum,
                    fasilitas: fasilitas)));
        // setState(() {
        //   selected == '1' ? selected = '2' : selected = '1';
        // });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selected != '1' ? "75A6FF".toColor() : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(
                3,
                3,
              ),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(16, 16, 8, 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        margin: EdgeInsets.only(bottom: 4, right: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: "F2F2F2".toColor(),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage(widget.save.perusahaan.gambar),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 42,
                        margin: EdgeInsets.only(bottom: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              child: Text(
                                widget.save.perusahaan.nama,
                                style: GoogleFonts.inter().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: selected != '1'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              //20
                              margin: EdgeInsets.only(bottom: 2),
                              child: Text(
                                widget.save.perusahaan.posisi,
                                style: GoogleFonts.inter().copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: selected != '1'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 26,
                    height: 24,
                    margin: EdgeInsets.only(bottom: 20, right: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.save.status != 'save'
                              ? 'assets/simpan_normal.png'
                              : 'assets/simpan.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(bottom: 4),
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDR 2.000.000',
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color:
                                  selected != '1' ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            widget.save.perusahaan.alamat,
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color:
                                  selected != '1' ? Colors.white : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 3),
                                height: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: selected != '1'
                                      ? Colors.black
                                      : "E6EDF4".toColor(),
                                ),
                                child: Text(
                                  widget.save.perusahaan.pendidikan,
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: selected != '1'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                height: 16,
                                margin: EdgeInsets.only(left: 8, right: 10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: selected != '1'
                                      ? Colors.black
                                      : "E6EDF4".toColor(),
                                ),
                                child: Text(
                                  widget.save.perusahaan.jamkerja,
                                  style: GoogleFonts.inter().copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: selected != '1'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 13),
                            height: 16,
                            alignment: Alignment.bottomRight,
                            child: Text(
                              widget.save.perusahaan.deadline,
                              style: GoogleFonts.inter().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: selected != '1'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
