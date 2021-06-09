part of "widgets.dart";

class GantiFotoProfile extends StatefulWidget {
  @override
  _GantiFotoProfileState createState() => _GantiFotoProfileState();
}

class _GantiFotoProfileState extends State<GantiFotoProfile> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              height: 100,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 24),
                    height: 40,
                    width: 40,
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
                      alignment: Alignment.bottomRight,
                      icon: Icon(Icons.delete_outline_rounded,
                          color: Colors.white),
                      onPressed: () {
                        Get.to(MainPage());
                      },
                    ),
                  ),
                  Container(
                    child: Text("Hapus Foto",
                        style: blackFontStyle3.copyWith(
                            fontSize: 10, fontWeight: FontWeight.normal)),
                    margin: EdgeInsets.only(top: 10, left: 24),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 100,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 24),
                    height: 40,
                    width: 40,
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
                      alignment: Alignment.bottomRight,
                      icon: Icon(Icons.photo_size_select_actual_outlined,
                          color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: Text(" Galeri",
                        style: blackFontStyle3.copyWith(
                            fontSize: 10, fontWeight: FontWeight.normal)),
                    margin: EdgeInsets.only(top: 10, left: 24),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 80,
              height: 100,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24, left: 24),
                    height: 40,
                    width: 40,
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
                      alignment: Alignment.bottomRight,
                      icon:
                          Icon(Icons.camera_alt_outlined, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: Text("Kamera",
                        style: blackFontStyle3.copyWith(
                            fontSize: 10, fontWeight: FontWeight.normal)),
                    margin: EdgeInsets.only(top: 10, left: 24),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
