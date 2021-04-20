part of "pages.dart";

class GenProfilePage extends StatelessWidget {
  final String title;
  final Widget child;
  final String str;
  final String photo;
  final String photodefault;
  final bool tampil;

  GenProfilePage(
      {this.title = "title",
      this.child,
      this.str,
      this.photo,
      this.photodefault = "assets/person.png",
      this.tampil});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColors2,
        toolbarHeight: 1,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.37,
            width: double.infinity,
            child: Stack(
              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [blueColors, blueColors2],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                    ),
                  ),
                ),
                Positioned(
                    top: orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * 0.086
                        : 20,
                    child: Text(
                      title,
                      style: blackFontStyle.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                  bottom: 2,
                  child: Stack(
                    children: [
                      Material(
                        elevation: 15,
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              width: orientation == Orientation.portrait
                                  ? 150
                                  : 100,
                              height: orientation == Orientation.portrait
                                  ? 150
                                  : 100,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                              ),
                              child: Container(
                                width: orientation == Orientation.portrait
                                    ? 150
                                    : 100,
                                height: orientation == Orientation.portrait
                                    ? 150
                                    : 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          photo != null ? photo : photodefault),
                                      // fit: BoxFit.contain
                                    )),
                              ),
                            ),
                            str != null
                                ? Positioned(
                                    bottom: -5,
                                    right: -5,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: "0E3854".toColor(),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        color: blueColors2,
                                        alignment: Alignment.bottomRight,
                                        icon: Icon(Icons.camera_alt_rounded,
                                            color: Colors.white),
                                        onPressed: () {
                                          Get.to(AlertLogout());
                                        },
                                      ),
                                    ),
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          child ?? Container(),
        ],
      ),
    );
  }
}
