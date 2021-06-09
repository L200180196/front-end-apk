part of "pages.dart";

class RiwayatLamaran extends StatefulWidget {
  @override
  _RiwayatLamaranState createState() => _RiwayatLamaranState();
}

class _RiwayatLamaranState extends State<RiwayatLamaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: blueColors,
        toolbarHeight: 96,
        title: Text(
          "Kebijakan",
          style: blackFontStyle3.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
