part of '../app_assets.dart';

class _AppColors {
  /// Function to Convert Hex Code To Color object

  Color colorFromHex(String hexColor) {
    final color = hexColor.replaceAll('#', '');

    ///  #ffffff -> ffffff
    return Color(int.parse('FF$color', radix: 16));

    ///  0-9 ABCDEF
  }

  Color get mainBlack => colorFromHex("#383838");
  Color get lightGrey => colorFromHex("#FFFFFF").withOpacity(0.7);
  Color get white => colorFromHex("#FFFFFF");
}
