part of "pages.dart";

class GantiPassword3 extends StatefulWidget {
  @override
  _GantiPassword3State createState() => _GantiPassword3State();
}

class _GantiPassword3State extends State<GantiPassword3> {
  bool _isObscure = true;
  bool _isObscureverif = true;
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 96,
        backgroundColor: blueColors,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Ganti Password"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: ListView(
          children: [
            Text(
                "Kata sandi yang baru harus berbeda dengan kata sandi sebelumnya.",
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.normal)),
            Container(
                margin: EdgeInsets.only(top: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kata sandi ",
                        style:
                            greyFontStyle.copyWith(color: "808D9D".toColor())),
                    Container(
                      height: 65,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validatepass,
                        obscureText: _isObscure,
                        controller: password,
                        onChanged: _onChangedHuruf,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              color: _isObscure ? blueColors : greyColor3,
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          hintStyle: greyFontStyle.copyWith(
                              color: greyColor3, fontSize: 14),
                          hintText: "Minimal 8 karakter",
                        ),
                      ),
                    ),
                    Text("Ulangi kata sandi ",
                        style:
                            greyFontStyle.copyWith(color: "808D9D".toColor())),
                    Container(
                      height: 65,
                      margin: EdgeInsets.only(top: 10),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: validatepassverif,
                        obscureText: _isObscureverif,
                        controller: passwordverif,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintStyle: greyFontStyle.copyWith(
                              color: greyColor3, fontSize: 14),
                          hintText: " Pastikan kata sandi sama",
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24),
                      child: RaisedButton(
                          onPressed: () {
                            Get.to(GantiPassword4());
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
                                'Setel ulang password',
                                style: blackFontStyle3.copyWith(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
