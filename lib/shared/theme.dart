part of 'shared.dart';

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: blueColors,
);

const double defaultMargin = 24;
Color blueColors = "528FFF".toColor();
Color blueColors2 = "75A6FF".toColor();
Color greyColor = "4F4F4F".toColor();
Color greyColor2 = "828282".toColor();
Color greyColor3 = "A5B2C2".toColor();
Color greyColor4 = "B9C5D4".toColor();

TextStyle greyFontStyle = GoogleFonts.inter().copyWith(color: greyColor);
TextStyle blackFontStyle = GoogleFonts.inter()
    .copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700);
TextStyle blackFontStyle2 = GoogleFonts.inter()
    .copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.inter()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w700);
TextStyle blackFontStyle4 = GoogleFonts.inter()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600);
