part of 'pages.dart';

class Cobs extends StatefulWidget {
  final UserSave userSave;
  final Function onBackButtonPressed;
  final int id;
  final String nama;
  final String gambar;
  final String posisi;
  final String gaji;
  final String alamat;
  final String pendidikan;
  final String jamkerja;
  final String deadline;
  final String syaratumum;
  final String syaratkhusus;
  final String fasilitas;

  const Cobs(
      {Key key,
      this.id,
      this.nama,
      this.gambar,
      this.posisi,
      this.gaji,
      this.alamat,
      this.pendidikan,
      this.jamkerja,
      this.deadline,
      this.syaratumum,
      this.syaratkhusus,
      this.fasilitas,
      this.userSave,
      this.onBackButtonPressed})
      : super(key: key);

  @override
  _CobsState createState() => _CobsState();
}

class _CobsState extends State<Cobs> {
  void share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    final String text = "Ini adalah link";

    Share.share(
      text,
      subject: text,
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size,
    );
  }

  @override
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  color: "75A6FF".toColor(),
                ),
                height: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 24, top: 24),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/kembali.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(),
                        Container(
                          margin: EdgeInsets.only(right: 24, top: 24),
                          width: 32,
                          height: 32,
                          child: CircleAvatar(
                            backgroundColor:
                                "4A81E7".toColor().withOpacity(0.2),
                            child: IconButton(
                              icon: Icon(Icons.share_outlined),
                              iconSize: 16,
                              onPressed: () {
                                share(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 32),
                      child: Row(
                        children: [
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.gambar),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8, top: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(height: 20, child: Text(widget.nama)),
                                Container(
                                  height: 22,
                                  child: Text(
                                    widget.posisi,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  height: 16,
                                  child: Text(
                                    'IDR Rp.' + widget.gaji,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: "4A81E7".toColor(),
                                  ),
                                  child: Text(
                                    widget.jamkerja,
                                    style: TextStyle(fontSize: 8),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 14, right: 24),
                width: double.infinity,
                child: Column(
                  children: [
                    CustomTabbar(
                      titles: ['Deskripsi', 'Fasilitas'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Builder(builder: (_) {
                      String judul1 =
                          (selectedIndex == 0) ? 'Syarat Umum' : 'Fasilitas';
                      String judul2 =
                          (selectedIndex == 0) ? 'Syarat Khusus' : '';
                      String isi1 = (selectedIndex == 0)
                          ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.'
                          : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. ';
                      String isi2 = (selectedIndex == 0)
                          ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Varius aenean neque eget turpis id in. Commodo, nec eget blandit cras ante lectus. Amet elit nulla sed commodo sit integer. Nibh consequat donec nunc, dolor sed egestas. Morbi egestas ridiculus sollicitudin condimentum arcu bibendum. Posuere vel tortor, ac congue sapien ac dictum sed neque. Enim ullamcorper diam est dictum.'
                          : '';
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              judul1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 8),
                            alignment: Alignment.topLeft,
                            child: Text(
                              isi1,
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            child: Text(
                              judul2,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.only(bottom: 60),
                            alignment: Alignment.topLeft,
                            child: Text(
                              isi2,
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      );
                    })
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomLamaran(),
          ),
        ],
      ),
    );
  }
}
