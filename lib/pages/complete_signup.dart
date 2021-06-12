part of 'pages.dart';

class CompleteSignUp extends StatefulWidget {
  @override
  _CompleteSignUpState createState() => _CompleteSignUpState();
}

class _CompleteSignUpState extends State<CompleteSignUp> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController skillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return GenProfilePage(
      title: "Lengkapi Profil Kamu",
      str: "aa",
      child: Column(
        children: [
          Container(
            height: orientation == Orientation.portrait
                ? MediaQuery.of(context).size.height * 0.50
                : 400,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 20,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: "4A81E7".toColor(),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text("Pencari Kerja",
                        style: blackFontStyle3.copyWith(
                            color: Colors.white, fontSize: 10)),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 10),
                  width: double.infinity,
                  child: TextField(
                    controller: namaController,
                    decoration: InputDecoration(
                      icon: CircleAvatar(
                        backgroundColor: blueColors,
                        radius: 15,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      hintStyle: greyFontStyle.copyWith(
                          color: greyColor3, fontSize: 14),
                      hintText: "Nama Lengkap Kamu",
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 10),
                  width: double.infinity,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      icon: CircleAvatar(
                        backgroundColor: blueColors,
                        radius: 15,
                        child: Icon(
                          Icons.alternate_email_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        // child:Icons.alternate_email_rounded,
                        // color: Colors.blue,
                      ),
                      hintStyle: greyFontStyle.copyWith(
                          color: greyColor3, fontSize: 14),
                      hintText: "Email Kamu",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      defaultMargin, 0, defaultMargin, defaultMargin),
                  width: double.infinity,
                  child: TextField(
                    controller: skillController,
                    decoration: InputDecoration(
                      icon: CircleAvatar(
                        backgroundColor: blueColors,
                        radius: 15,
                        child: Container(
                            height: 19,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.scaleDown,
                                  image: AssetImage("assets/skill.png")),
                            )),
                      ),
                      hintStyle: greyFontStyle.copyWith(
                          color: greyColor3, fontSize: 14),
                      hintText: "Skill",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: defaultMargin * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RaisedButton(
                  onPressed: () {
                    Get.to(MainPage());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  // color: blueColors,
                  padding: EdgeInsets.all(0),
                  color: blueColors2,
                  highlightColor: blueColors,
                  child: Text(
                    "Simpan",
                    style: blackFontStyle3.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
