part of 'pages.dart';

class Search2 extends StatefulWidget {
  @override
  _Search2State createState() => _Search2State();
}

class _Search2State extends State<Search2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            "Cari Pekerjaan",
            style: blackFontStyle.copyWith(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
