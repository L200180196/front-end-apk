part of 'widgets.dart';

class Save extends StatelessWidget {
  final UserSave save;

  Save({@required this.save});
  @override
  Widget build(BuildContext context) {
    return save.status != 'save'
        ? Container()
        : Container(
            margin: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              image: DecorationImage(
                                  image: AssetImage(save.perusahaan.gambar),
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
                                    save.perusahaan.nama,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Container(
                                  //20
                                  margin: EdgeInsets.only(bottom: 2),
                                  child: Text(
                                    save.perusahaan.posisi,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
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
                              image: AssetImage(save.status != 'save'
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
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                save.perusahaan.alamat,
                                style: TextStyle(fontSize: 10),
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
                                        color: "E6EDF4".toColor()),
                                    child: Text(
                                      save.perusahaan.pendidikan,
                                      style: TextStyle(fontSize: 10),
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
                                        color: "E6EDF4".toColor()),
                                    child: Text(
                                      save.perusahaan.jamkerja,
                                      style: TextStyle(fontSize: 10),
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
                                  save.perusahaan.deadline,
                                  style: TextStyle(fontSize: 10),
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
          );
  }
}
