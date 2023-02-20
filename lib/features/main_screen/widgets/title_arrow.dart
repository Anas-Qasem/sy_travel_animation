part of '../main_screen.dart';

class _TitleArrow extends StatelessWidget {
  const _TitleArrow({required this.animationController});
  final AnimationController animationController;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: Icon(
        Icons.keyboard_arrow_up,
        color: AppAssets.colors.lightGrey,
        size: 25,
      ),
      builder: (context, child) {
        return Positioned(
          right: 25,
          top: (1 - (animationController.value)) *
              MediaQuery.of(context).size.height *
              0.629,
          child: Padding(
            padding: EdgeInsets.only(top: 65 * animationController.value),
            child: child!,
          ),
        );
      },
    );
  }
}
