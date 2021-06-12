part of "pages.dart";

class GantiPassword2 extends StatelessWidget {
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
                  image: AssetImage("assets/Mail.png"),
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.height * 0.09,
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Text(
                  "Cek email kamu ",
                  style: blackFontStyle3.copyWith(fontSize: 30),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 24),
                child: Text(
                  "Kami baru saja mengirimkan email untuk mengatur ulang kata sandi kamu ",
                  textAlign: TextAlign.center,
                  style: blackFontStyle3.copyWith(
                      fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RaisedButton(
                    onPressed: () {
                      Get.to(GantiPassword3());
                    },
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
                          'Buka Aplikasi Email',
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
