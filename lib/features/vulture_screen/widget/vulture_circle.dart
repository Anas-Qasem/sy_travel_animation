part of '../vulture_screen.dart';

class _VultureCircle extends StatelessWidget {
  const _VultureCircle();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBloc, MainScreenState>(
      builder: (context, state) {
        final double multiplier = math.max(0, 4 * state.page - 3);
        final double size =
            (MediaQuery.of(context).size.width / 2) * multiplier;
        return Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 3.4,
          ),
          decoration: BoxDecoration(
            color: AppAssets.colors.lightGrey,
            shape: BoxShape.circle,
          ),
          width: size,
          height: size,
        );
      },
    );
  }
}
