part of "pages.dart";

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final item =
      mockLokasi.map((e) => MultiSelectItem<Lokasi>(e, e.nama)).toList();
  final item1 = mockPendidikan
      .map((e) => MultiSelectItem<Pendidikan>(e, e.nama))
      .toList();
  final item2 = mockTipePekerjaan
      .map((e) => MultiSelectItem<TipePekerjaan>(e, e.nama))
      .toList();
  List<Lokasi> selectedLokasi = [];
  List<Pendidikan> selectedPendidikan = [];
  List<TipePekerjaan> selectedTipePekerjaan = [];
  // final _multiSelectKey = GlobalKey<FormFieldState>();
  // final _multiSelectKey1 = GlobalKey<FormFieldState>();
  // final _multiSelectKey2 = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(defaultMargin),
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: 30,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Text(
              "Cari Pekerjaan",
              style: blackFontStyle.copyWith(color: Colors.black, fontSize: 18),
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: defaultMargin),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Posisi Pekerjaan ",
                border: OutlineInputBorder(),
                prefixIcon: new Icon(Icons.search),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
              "Pilih Lokasi",
              style: blackFontStyle3,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: <Widget>[
                MultiSelectBottomSheetField<Lokasi>(
                  // key: _multiSelectKey,
                  initialChildSize: 0.5,
                  maxChildSize: 0.9,
                  minChildSize: 0.3,
                  searchHint: "Pilih Lokasi",
                  searchable: true,
                  items: item,
                  title: Text("Pilih Lokasi"),
                  buttonIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: greyColor4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: greyColor4, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  buttonText: Text("Lokasi"),
                  onConfirm: (values) {
                    setState(() {
                      selectedLokasi = values;
                    });
                    // _multiSelectKey.currentState.validate();
                  },
                  chipDisplay: MultiSelectChipDisplay(
                    icon: Icon(Icons.close),
                    onTap: (value) {
                      setState(() {
                        selectedLokasi.remove(value);
                      });
                      // _multiSelectKey.currentState.validate();
                    },
                  ),
                ),
              ],
            ),
          ),
          //pendidikan
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
              "Pilih Pendidikan",
              style: blackFontStyle3,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: <Widget>[
                MultiSelectBottomSheetField<Pendidikan>(
                  // key: _multiSelectKey,
                  initialChildSize: 0.5,
                  maxChildSize: 0.9,
                  minChildSize: 0.3,
                  searchHint: "Pilih Pendidikan",
                  searchable: true,
                  items: item1,
                  title: Text("Pilih Pendidikan"),
                  buttonIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: greyColor4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: greyColor4, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  buttonText: Text("Pendidikan"),
                  onConfirm: (values) {
                    setState(() {
                      selectedPendidikan = values;
                    });
                    // _multiSelectKey1.currentState.validate();
                  },
                  chipDisplay: MultiSelectChipDisplay(
                    icon: Icon(Icons.close),
                    onTap: (value) {
                      setState(() {
                        selectedPendidikan.remove(value);
                      });
                      // _multiSelectKey1.currentState.validate();
                    },
                  ),
                ),
              ],
            ),
          ),
          //Pekerjaan
          Container(
            margin: EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
              "Pilih Tipe Pekerjaan",
              style: blackFontStyle3,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: <Widget>[
                MultiSelectBottomSheetField<TipePekerjaan>(
                  // key: _multiSelectKey,
                  initialChildSize: 0.5,
                  maxChildSize: 0.9,
                  minChildSize: 0.3,
                  searchHint: "Pilih Tipe Pekerjaan",
                  searchable: true,
                  items: item2,
                  title: Text("Pilih Tipe Pekerjaan"),
                  buttonIcon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: greyColor4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: greyColor4, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  buttonText: Text("Tipe Pekerjaan"),
                  onConfirm: (values) {
                    setState(() {
                      selectedTipePekerjaan = values;
                    });
                    // _multiSelectKey2.currentState.validate();
                  },
                  chipDisplay: MultiSelectChipDisplay(
                    icon: Icon(Icons.close),
                    onTap: (value) {
                      setState(() {
                        selectedTipePekerjaan.remove(value);
                      });
                      // _multiSelectKey2.currentState.validate();
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
              onPressed: () {},
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
        ],
      ),
    );
  }
}
