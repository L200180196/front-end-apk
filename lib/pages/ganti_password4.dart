part of "pages.dart";

class GantiPassword4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.17,
                width: MediaQuery.of(context).size.height * 0.17,
                decoration: BoxDecoration(
                    color: "E7EFFF".toColor(),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Center(
                    child: Image(
                  image: AssetImage("assets/check.png"),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.height * 0.09,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "Kata sandi kamu sudah berhasil diganti ",
                  textAlign: TextAlign.center,
                  style: blackFontStyle3.copyWith(fontSize: 22),
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                child: RaisedButton(
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
                          borderRadius: BorderRadius.circular(4)),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Kembali ke profil',
                          style: blackFontStyle3.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
