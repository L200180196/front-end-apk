part of "pages.dart";

class GeneralPageAwal extends StatelessWidget {
  final String title;
  final String teks1;
  final String teks2;
  final Function onBackButtonPressed;
  final Widget child;

  final Color backColor;

  GeneralPageAwal(
      {this.onBackButtonPressed,
      this.title = "title",
      this.child,
      this.backColor,
      this.teks1,
      this.teks2});
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: ListView(
            // shrinkWrap: true,
            padding:
                const EdgeInsets.only(top: 24, bottom: 0, left: 24, right: 24),
            children: [
              Column(
                children: [
                  Container(
                    // height: MediaQuery.of(context).size.height * 9,
                    width: double.infinity,
                    height: deviceHeight <= 768 ? 35 : 40,
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          title,
                          style: blackFontStyle.copyWith(
                              fontSize: deviceHeight >= 768 ? 22 : 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          child: Container(
                            width: 25,
                            decoration: BoxDecoration(),
                          ),
                        )
                      ],
                    ),
                  ),
                  child ?? Container(),
                ],
              ),
              Container(
                      height: orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * 0.05
                          : MediaQuery.of(context).size.height * 0.09,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            teks1,
                            style: TextStyle(fontSize: 12),
                          ),
                          // Text("Belum memiliki akun ? "),
                          TextButton(
                              onPressed: () {
                                Get.to(SignUpPage());
                              },
                              child: Text(
                                teks2,
                                // Text(
                                //   "Daftar sekarang",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: greyColor3,
                                    fontSize: 12),
                              ))
                        ],
                      )) ??
                  Container(),
            ],
          ),
        ),
      ],
    ));
  }
}
