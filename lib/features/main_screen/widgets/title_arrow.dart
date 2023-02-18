part of '../main_screen.dart';

class _TitleArrow extends StatelessWidget {
  const _TitleArrow();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 25,
      top: MediaQuery.of(context).size.height * 0.629,
      child: Icon(
        Icons.keyboard_arrow_up,
        color: AppAssets.colors.lightGrey,
        size: 25,
      ),
    );
  }
}
