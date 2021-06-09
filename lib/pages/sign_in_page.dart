part of "pages.dart";

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isObscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int lengthpass = 0;
  _onChangedHuruf(String value) {
    setState(() {
      lengthpass = value.length;
    });
  }

  bool isLoading = false;

  bool notif = false;
  String validatepass(value) {
    if (value.isEmpty) {
      return "Tidak boleh kosong";
    } else if (value.length < 8) {
      return " Kurang dari 8 karakter ";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    double deviceHeight = MediaQuery.of(context).size.height;
    bool isLoading = false;
    String email = "a@gmail.com";
    String pass = "12345678";
    return GeneralPageAwal(
      title: "Log In",
      teks1: "Belum Memiliki Akun ?",
      teks2: "Daftar Sekarang",
      child: Container(
        height: orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.79
            : 470,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    defaultMargin,
                    deviceHeight <= 768 ? deviceHeight * 0.02 : 28,
                    defaultMargin,
                    defaultMargin),
                child: Text(
                  "Selamat Datang :)",
                  style: blackFontStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: blueColors,
                      fontSize: deviceHeight <= 768 ? 18 : 20),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Visibility(
                        visible: notif,
                        child: Text(
                          "Email atau password tidak cocok",
                          style: blackFontStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: Colors.red),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: deviceHeight <= 768 ? 40 : 50,
                      width: double.infinity,
                      child: TextFormField(
                        style: notif == false
                            ? blackFontStyle3.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 14)
                            : blackFontStyle3.copyWith(
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Tidak boleh kosong"),
                          EmailValidator(errorText: "Bukan merupakan email"),
                        ]),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: notif == true
                                      ? Colors.red
                                      : "B9C5D4".toColor())),
                          icon: CircleAvatar(
                            backgroundColor: blueColors,
                            radius: 15,
                            child: Icon(
                              Icons.alternate_email,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          hintStyle: greyFontStyle.copyWith(
                              color: notif == false ? greyColor3 : Colors.red,
                              fontSize: 14),
                          hintText: "emailkamu@gmail.com",
                        ),
                      ),
                    ),
                    Container(
                      height: deviceHeight <= 768 ? 40 : 50,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        style: notif == false
                            ? blackFontStyle3.copyWith(
                                fontWeight: FontWeight.normal, fontSize: 14)
                            : blackFontStyle3.copyWith(
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                        onChanged: _onChangedHuruf,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validatepass,
                        obscureText: _isObscure,
                        controller: passwordController,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: notif == true
                                      ? Colors.red
                                      : "B9C5D4".toColor())),
                          icon: CircleAvatar(
                            backgroundColor: blueColors,
                            radius: 15,
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                              size: 20,
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
                              color: notif == false ? greyColor3 : Colors.red,
                              fontSize: 14),
                          hintText: "password kamu",
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      margin: EdgeInsets.only(top: 16),
                      child: Container(
                        child: isLoading
                            ? loadingIndicator
                            : RaisedButton(
                                onPressed: () {
                                  if (formkey.currentState.validate() &&
                                      emailController.text == email &&
                                      passwordController.text == pass) {
                                    print("Validate");
                                    Get.to(MainPage);
                                  } else if (emailController.text != email ||
                                      passwordController.text != pass) {
                                    setState(() {
                                      notif = !notif;
                                    });
                                    Get.to(MainPage());
                                    // Get.snackbar(
                                    //   "Gagal",
                                    //   "Email atau password tidak cocok",
                                    //   backgroundColor: "D9435E".toColor(),
                                    // );
                                  } else if (lengthpass < 8) {
                                    Get.snackbar(
                                      "Gagal",
                                      "Password kurang dari 8 karakter",
                                      backgroundColor: "D9435E".toColor(),
                                    );
                                  } else {
                                    print("Not Validate");
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
                                      'Masuk',
                                      style: blackFontStyle3.copyWith(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      height: 35,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lupa Password ?",
                            style: TextStyle(fontSize: 12),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Reset Password",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: greyColor3,
                                    fontSize: 12),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: deviceHeight * 0.05),
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
                            onPressed: () {
                              Get.to(SignUpPage());
                            },
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
                                        Container(
                                          child: Row(
                                            children: [
                                              Image(
                                                  height: 24,
                                                  width: 24,
                                                  image: AssetImage(
                                                    "assets/gmail.png",
                                                  )),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 12),
                                                child: Image(
                                                    image: AssetImage(
                                                  "assets/Vdivider.png",
                                                )),
                                              ),
                                            ],
                                          ),
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
                                      'Masuk Dengan Google',
                                      style: blackFontStyle.copyWith(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: orientation == Orientation.portrait
                                        ? 2
                                        : 1,
                                    child: Container())
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Expanded buildDivider() {
  return Expanded(
      child: Divider(
    height: 3,
  ));
}
