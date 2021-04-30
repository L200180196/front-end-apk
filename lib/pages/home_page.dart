part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(bottom: 30),
      child: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 32, left: 24),
                    child: Text(
                      "Untuk Kamu",
                      style: blackFontStyle4,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 24),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 172,
                width: double.infinity,
                child: BlocBuilder<SaveCubit, SaveState>(
                  builder: (_, state) => (state is SaveLoaded)
                      ? ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: state.save
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(
                                            left: (e == mockUserSave.first)
                                                ? 24
                                                : 0),
                                        child: Rekomendasi(save: e),
                                      ))
                                  .toList(),
                            ),
                          ],
                        )
                      : Center(child: loadingIndicator),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 24, left: 24),
                child: Text(
                  "Lowongan Terbaru",
                  style: blackFontStyle4,
                ),
              ),
              Column(
                children:
                    mockUserSave.map((e) => LowonganBaru(save: e)).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
