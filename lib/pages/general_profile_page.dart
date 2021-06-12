part of "pages.dart";

class GenProfilePage extends StatefulWidget {
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
  _GenProfilePageState createState() => _GenProfilePageState();
}

class _GenProfilePageState extends State<GenProfilePage> {
  @override
  void _onButtonPressed() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return GantiFotoProfile();
        });
  }

  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    double deviceHeight = MediaQuery.of(context).size.height;

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
                        ? MediaQuery.of(context).size.height * 0.03
                        : 20,
                    child: Text(
                      widget.title,
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
                              width: MediaQuery.of(context).size.height * 0.23,
                              height: MediaQuery.of(context).size.height * 0.23,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                shape: BoxShape.rectangle,
                              ),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.height * 0.23,
                                height:
                                    MediaQuery.of(context).size.height * 0.23,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                      image: AssetImage(widget.photo != null
                                          ? widget.photo
                                          : widget.photodefault),
                                      // fit: BoxFit.contain
                                    )),
                              ),
                            ),
                            widget.str != null
                                ? Positioned(
                                    bottom: -5,
                                    right: -5,
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [blueColors2, blueColors],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight),
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        color: blueColors2,
                                        iconSize: 30,
                                        alignment: Alignment.bottomRight,
                                        icon: Icon(Icons.camera_alt_rounded,
                                            color: Colors.white),
                                        onPressed: () => _onButtonPressed(),
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
          widget.child ?? ListView(),
        ],
      ),
    );
  }
}
