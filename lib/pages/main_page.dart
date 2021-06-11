part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color bgColor = "8D92A3".toColor();

  int selectedPage = 0;

  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors
                .transparent, // set the Color of the drawer transparent; we'll paint above it with the shape
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Drawer(
              child: CustomSidebar(),
            ),
          )),
      appBar: selectedPage != 2
          ? AppBar(
              elevation: 0,
              backgroundColor: "528FFF".toColor(),
              title: Container(
                  alignment: Alignment.center,
                  child: Builder(builder: (_) {
                    if (selectedPage == 0) {
                      return Text("Beranda");
                    } else if (selectedPage == 1) {
                      return Text("Bookmark");
                    } else {
                      return Text("");
                    }
                  })),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: selectedPage != 2
                        ? GestureDetector(
                            onTap: () {
                              Get.to(Search());
                            },
                            child: Icon(
                              Icons.search,
                              size: 26.0,
                            ),
                          )
                        : SizedBox()),
              ],
            )
          : null,
      body: Stack(
        children: [
          Container(
            color: blueColors,
          ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              HomePage(),
              // IllustrationPage(),
              BookmarkPage(),
              ProfilePage(),
            ],
          )),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavbar(
                  selectedIndex: selectedPage,
                  onTap: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                    pageController.jumpToPage(selectedPage);
                  }))
        ],
      ),
    );
  }
}
