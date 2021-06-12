part of "pages.dart";

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isObscure = true;
  bool _isObscureverif = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordverif = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int lengthpass = 0;
  _onChangedHuruf(String value) {
    setState(() {
      lengthpass = value.length;
    });
  }

  String validatepass(value) {
    if (value.isEmpty) {
      return "Tidak boleh kosong";
    } else if (value.length < 8) {
      return " Kurang dari 8 karakter ";
    } else {
      return null;
    }
  }

  String validatepassverif(value) {
    if (value.isEmpty) {
      return "Tidak boleh kosong";
    } else if (value.length < 8) {
      return " Kurang dari 8 karakter ";
    } else if (value != password.text) {
      return "Password berbeda";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    double deviceHeight = MediaQuery.of(context).size.height;
    // bool isLoading = false;
    return GeneralPageAwal(
      title: "Register",
      teks1: "Sudah Punya Akun ?",
      teks2: "Register",
      child: Container(
        height: orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.76
            : 470,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  defaultMargin, 28, defaultMargin, defaultMargin),
              child: Text(
                "Buat Akun Baru",
                style: blackFontStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: blueColors,
                    fontSize: deviceHeight <= 768 ? 18 : 20),
              ),
            ),
            Container(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Container(
                      height: deviceHeight <= 768 ? 40 : 50,
                      width: double.infinity,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(
                            errorText: "Tidak boleh kosong",
                          ),
                          EmailValidator(errorText: "Bukan merupakan email"),
                        ]),
                        controller: email,
                        decoration: InputDecoration(
                          icon: CircleAvatar(
                            backgroundColor: blueColors,
                            radius: 15,
                            child: Icon(Icons.alternate_email,
                                color: Colors.white, size: 20),
                          ),
                          hintStyle: greyFontStyle.copyWith(
                              color: greyColor3, fontSize: 14),
                          hintText: "emailkamu@gmail.com",
                        ),
                      ),
                    ),
                    Container(
                      height: deviceHeight <= 768 ? 40 : 50,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validatepass,
                        obscureText: _isObscure,
                        controller: password,
                        onChanged: _onChangedHuruf,
                        decoration: InputDecoration(
                          icon: CircleAvatar(
                            backgroundColor: blueColors,
                            radius: 15,
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: _isObscure ? blueColors : greyColor3,
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          hintStyle: greyFontStyle.copyWith(
                              color: greyColor3, fontSize: 14),
                          hintText: "password kamu",
                        ),
                      ),
                    ),
                    Container(
                      height: deviceHeight <= 768 ? 40 : 50,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validatepassverif,
                        obscureText: _isObscureverif,
                        controller: passwordverif,
                        decoration: InputDecoration(
                          icon: CircleAvatar(
                            backgroundColor: blueColors,
                            radius: 15,
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscureverif
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: _isObscureverif ? blueColors : greyColor3,
                              onPressed: () {
                                setState(() {
                                  _isObscureverif = !_isObscureverif;
                                });
                              }),
                          hintStyle: greyFontStyle.copyWith(
                              color: greyColor3, fontSize: 14),
                          hintText: " Ulangi password kamu",
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.only(top: 16),
                      child: Container(
                        child: RaisedButton(
                            onPressed: () {
                              if (formkey.currentState.validate() &&
                                  password.text == passwordverif.text) {
                                Get.to(CompleteSignUp());
                              } else if (password.text != passwordverif.text) {
                                Get.snackbar(
                                  "Gagal",
                                  "Verifikasi password berbeda",
                                  backgroundColor: "D9435E".toColor(),
                                );
                              } else if (lengthpass < 8 && lengthpass != 0) {
                                Get.to(CompleteSignUp());
                                Get.snackbar(
                                  "Gagal",
                                  "Password harus lebih dari 8 karakter",
                                  backgroundColor: "D9435E".toColor(),
                                );
                              } else if (lengthpass == 0) {
                                Get.to(CompleteSignUp());
                                Get.snackbar(
                                  "Gagal",
                                  "Password tidak boleh kosong",
                                  backgroundColor: "D9435E".toColor(),
                                );
                              } else {
                                Get.to(CompleteSignUp());
                              }
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
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  'Buat Akun',
                                  style: blackFontStyle.copyWith(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      width: double.infinity,
                      child: Row(
                        children: [
                          buildDivider(),
                          Container(
                              margin: EdgeInsets.only(
                                right: 15,
                                left: 15,
                              ),
                              child: Text(
                                "Atau",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: greyColor3,
                                ),
                              )),
                          buildDivider(),
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 40,
                        margin: EdgeInsets.only(top: 16),
                        child: Container(
                          child: RaisedButton(
                            onPressed: () {},
                            elevation: 0,
                            color: "E76257".toColor(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.all(0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: orientation == Orientation.portrait
                                      ? 2
                                      : 1,
                                  child: SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                            height: 24,
                                            width: 24,
                                            image: AssetImage(
                                              "assets/gmail.png",
                                            )),
                                        Container(
                                          margin: EdgeInsets.only(left: 12),
                                          child: Image(
                                              image: AssetImage(
                                            "assets/Vdivider.png",
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: orientation == Orientation.portrait
                                      ? 6
                                      : 8,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Register Dengan Google',
                                      style: blackFontStyle.copyWith(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: orientation == Orientation.portrait
                                        ? 2
                                        : 1,
                                    child: SizedBox())
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
