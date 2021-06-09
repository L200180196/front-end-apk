part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.4
                  : MediaQuery.of(context).size.width * 0.2,
              height: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.4
                  : MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/maaf.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 44),
              child: Text(
                "Yah, Kami belum kenal sama kamu. Kamu harus Log In/Register dulu supaya bisa menggunakan fitur ini.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: "A5B2C2".toColor(),
                  fontSize: orientation == Orientation.portrait
                      ? (MediaQuery.of(context).size.height <= 640 ? 14 : 16)
                      : 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
              width: double.infinity,
              padding: EdgeInsets.all(0),
              height: 40,
              color: Colors.transparent,
              child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: blueColors,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text("Register di Sini",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height <= 640
                            ? 14
                            : 16)),
              ),
            ),
          ],
        ));
  }
}
