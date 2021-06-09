part of "widgets.dart";

class AlertLogout extends StatefulWidget {
  @override
  _AlertLogoutState createState() => _AlertLogoutState();
}

class _AlertLogoutState extends State<AlertLogout> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        backgroundColor: Colors.white54,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        title: Center(
          child: Text(
            "Yakin Pingin keluar ?",
            style: blackFontStyle3,
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              child: RaisedButton(
                onPressed: () {},
                color: blueColors,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Container(
                  decoration: BoxDecoration(
                    color: blueColors,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Text(
                    "Tidak",
                    style: blackFontStyle3.copyWith(
                        fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              child: OutlineButton(
                borderSide: BorderSide(width: 2, color: blueColors),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                onPressed: () {},
                child: Text(
                  "Ya",
                  style:
                      blackFontStyle3.copyWith(fontSize: 11, color: blueColors),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
