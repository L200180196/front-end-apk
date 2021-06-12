part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final Color bg = "E5E5E5".toColor();
  final String title;
  final Function onCloseButton;
  final Widget child;
  final Color backColor;

  GeneralPage({this.title, this.onCloseButton, this.child, this.backColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? bg,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: defaultMargin),
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 75,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          SizedBox(
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: onCloseButton != null
                                ? Container(
                                    width: 40,
                                    height: 40,
                                    margin: EdgeInsets.only(left: 50),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/close.png'))),
                                  )
                                : SizedBox(),
                          ),
                        ],
                      ),
                    ),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
