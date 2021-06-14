part of 'widgets.dart';

class Rekomendasi extends StatefulWidget {
  final Perusahaan save;

  Rekomendasi({this.save});

  @override
  _RekomendasiState createState() => _RekomendasiState();
}

class _RekomendasiState extends State<Rekomendasi> {
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
    return Center(
      child: GestureDetector(
        onTap: () {
          id = widget.save.id;
          nama = widget.save.nama;
          gambar = widget.save.gambar;
          posisi = widget.save.posisi;
          gaji = widget.save.gaji;
          alamat = widget.save.alamat;
          pendidikan = widget.save.pendidikan;
          jamkerja = widget.save.jamkerja;
          deadline = widget.save.deadline;
          syaratumum = widget.save.syaratumum;
          syaratkhusus = widget.save.syaratkhusus;
          fasilitas = widget.save.fasilitas;
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
          margin: EdgeInsets.only(top: 8, right: 24),
          width: 252,
          height: 132,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: selected != '1' ? "75A6FF".toColor() : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(
                  3,
                  3,
                ),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(top: 12, left: 12),
                    child: Text(
                      widget.save.posisi,
                      style: GoogleFonts.inter().copyWith(
                        fontWeight: FontWeight.w700,
                        color: selected != '1' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 13,
                    height: 16,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.save != 'save'
                              ? 'assets/simpan_normal.png'
                              : 'assets/simpan.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 12),
                child: Text(
                  "IDR 2.000.000",
                  style: GoogleFonts.inter().copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: selected != '1' ? Colors.white : Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12),
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: "F2F2F2".toColor(),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        image: DecorationImage(
                            image: AssetImage(widget.save.gambar),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.save.nama,
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color:
                                  selected != '1' ? Colors.white : Colors.black,
                            ),
                          ),
                          Text(
                            widget.save.alamat,
                            style: GoogleFonts.inter().copyWith(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color:
                                  selected != '1' ? Colors.white : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 50,
                        alignment: Alignment.bottomRight,
                        child: Text(
                          widget.save.deadline,
                          style: GoogleFonts.inter().copyWith(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color:
                                selected != '1' ? Colors.white : Colors.black,
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
